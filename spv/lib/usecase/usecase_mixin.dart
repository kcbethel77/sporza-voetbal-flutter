import 'package:rxdart/rxdart.dart';
import 'package:spv/datasource/cache/cache.dart';
import 'package:spv/datasource/soccer_datasource.dart';
import 'package:spv/models/response.dart';
import 'package:spv/datasource/data_source_type.dart';

const MINIMUM_AMOUNT_OF_VALID_VALUES = 2;

mixin UseCase<T> {
  DatasourceType get dataSourceType;

  Cache get cache;

  SporzaSoccerDataSource get network;

  Observable<Response<T>> mapToCacheResponse<T>(Observable<T> observable) =>
      observable.map((value) => Response.dbSuccess(value)).onErrorReturnWith((err) => Response.dbError(err));

  Observable<Response<T>> mapToNetworkResponse<T>(Observable<T> observable) =>
      observable.map((value) => Response.nwSuccess(value)).onErrorReturnWith((err) => Response.nwError(err));

  ReplaySubject<Response<T>> _cachedResponse = ReplaySubject(maxSize: MINIMUM_AMOUNT_OF_VALID_VALUES);

  Observable<Response<T>> get _cachedResponseStream => Observable.fromIterable(_cachedResponse.values);

  Observable<Response<T>> stream({final bool shouldRefresh = false}) {
    if (!shouldRefresh && _cachedResponse.values.length == MINIMUM_AMOUNT_OF_VALID_VALUES) {
      print("${runtimeType} hit cache");
      return _cachedResponseStream;
    } else {
      print("${runtimeType} missed cached");
      _cachedResponse = ReplaySubject(maxSize: MINIMUM_AMOUNT_OF_VALID_VALUES);
    }

    return Observable.merge([nw, db]).doOnData((data) {
      if (data is Data) {
        final dataKind = (data as Data).isDatabase ? "db" : "network";
        print("${runtimeType} cached: ${dataKind}");
        _cachedResponse.add(data);
      }
    });
  }

  Observable<Response<T>> get nw =>
      mapToNetworkResponse(network.getT<T>(dataSourceType).doOnData((item) => cache.saveItem(dataSourceType, item)));

  Observable<Response<T>> get db => mapToCacheResponse(cache.getT(dataSourceType));
}

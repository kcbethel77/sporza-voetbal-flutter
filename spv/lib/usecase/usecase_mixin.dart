import 'package:rxdart/rxdart.dart';
import 'package:spv/datasource/cache/cache.dart';
import 'package:spv/datasource/soccer_datasource.dart';
import 'package:spv/models/response.dart';
import 'package:spv/datasource/data_source_type.dart';

mixin UseCase<T> {
  DatasourceType get dataSourceType;
  Cache get cache;
  SporzaSoccerDataSource get network;

  Observable<Response<T>> mapToCacheResponse<T>(Observable<T> observable) =>
      observable.map((value) => Response.dbSuccess(value)).onErrorReturnWith((err) => Response.dbError(err));

  Observable<Response<T>> mapToNetworkResponse<T>(Observable<T> observable) =>
      observable.map((value) => Response.nwSuccess(value)).onErrorReturnWith((err) => Response.nwError(err));

  Observable<Response<T>> get merged => Observable.merge([nw, db]);

  Observable<Response<T>> get nw =>
      mapToNetworkResponse(network.getT<T>(dataSourceType).doOnData((item) => cache.saveItem(dataSourceType, item)));

  Observable<Response<T>> get db => mapToCacheResponse(cache.getT(dataSourceType));
}
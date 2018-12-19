import 'package:rxdart/rxdart.dart';
import 'package:spv/datasource/cache/cache.dart';
import 'package:spv/datasource/data_source_type.dart';
import 'package:spv/datasource/soccer_datasource.dart';
import 'package:spv/models/response.dart';

abstract class ListUseCase<T> with UseCase {
  final Cache _cache;
  final SporzaSoccerDataSource _network;

  ListUseCase(this._cache, this._network);

  DatasourceType<T> get dataSourceType;

  Observable<Response<List<T>>> get _networkStream => mapToNetworkResponse(
      _network.getListOfT<T>(dataSourceType).doOnData((items) => _cache.saveItems(dataSourceType, items)));

  Observable<Response<List<T>>> get _cacheStream => mapToCacheResponse(_cache.getListOfT<T>(dataSourceType));

  Observable<Response<List<T>>> get mergeNetworkAndDb => merge(_networkStream, _cacheStream);
}

mixin UseCase {
  Observable<Response<T>> mapToCacheResponse<T>(Observable<T> observable) =>
      observable.map((value) => Response.dbSuccess(value)).onErrorReturnWith((err) => Response.dbError(err));

  Observable<Response<T>> mapToNetworkResponse<T>(Observable<T> observable) =>
      observable.map((value) => Response.nwSuccess(value)).onErrorReturnWith((err) => Response.nwError(err));

  Observable<Response<T>> merge<T>(Observable<Response<T>> network, Observable<Response<T>> db) =>
      Observable.merge([network, db]);
}
import 'package:rxdart/rxdart.dart';
import 'package:spv/datasource/cache/cache.dart';
import 'package:spv/datasource/data_source_type.dart';
import 'package:spv/datasource/soccer_datasource.dart';
import 'package:spv/models/response.dart';

abstract class ListUseCase<T> {
  final Cache _cache;
  final SporzaSoccerDataSource _network;

  ListUseCase(this._cache, this._network);

  DatasourceType<T> get dataSourceType;

  Observable<Response<List<T>>> get networkStream => _network
      .getListOfT<T>(dataSourceType)
      .doOnData((items) => _cache.saveItems(dataSourceType, items))
      .map((value) => Response.nwSuccess(value))
      .onErrorReturnWith((err) => Response.nwError(err));

  Observable<Response<List<T>>> get cacheStream => _cache
      .getListOfT<T>(dataSourceType)
      .map((value) => Response.nwSuccess(value))
      .onErrorReturnWith((err) => Response.dbError(err));

  Observable<Response<List<T>>> get mergeNetworkAndDb => Observable.merge([networkStream, cacheStream]);
}

import 'package:rxdart/rxdart.dart';
import 'package:spv/models/response.dart';
import 'package:spv/usecase/usecase_mixin.dart';

abstract class ListUseCase<T> with UseCase<List<T>> {
  @override
  Observable<Response<List<T>>> get nw => mapToNetworkResponse(
      network.getListOfT<T>(dataSourceType).doOnData((items) => cache.saveItems(dataSourceType, items)));

  @override
  Observable<Response<List<T>>> get db => mapToCacheResponse(cache.getListOfT<T>(dataSourceType));

  @override
  Observable<Response<List<T>>> get merged => Observable.merge([nw, db]);
}

import 'package:rxdart/rxdart.dart';
import 'package:spv/models/response.dart';

mixin UseCase {
  Observable<Response<T>> mapToCacheResponse<T>(Observable<T> observable) =>
      observable.map((value) => Response.dbSuccess(value)).onErrorReturnWith((err) => Response.dbError(err));

  Observable<Response<T>> mapToNetworkResponse<T>(Observable<T> observable) =>
      observable.map((value) => Response.nwSuccess(value)).onErrorReturnWith((err) => Response.nwError(err));

  Observable<Response<T>> merge<T>(Observable<Response<T>> network, Observable<Response<T>> db) =>
      Observable.merge([network, db]);
}
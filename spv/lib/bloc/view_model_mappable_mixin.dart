import 'package:spv/models/response.dart';

mixin ViewModelListMappable {
  Response<List<R>> mapToViewModels<T, R>(Response<List<T>> response,
                                           [List<R> mapListOfDataToViewModels(List<T> list)]) {
    if (response is Data) {
      var data = response as Data;
      var mapListOfNewToViewModels = mapListOfDataToViewModels((data).value as List<T>);

      if (data.isNetwork) {
        return Response.nwSuccess(mapListOfNewToViewModels);
      } else {
        return Response.dbSuccess(mapListOfNewToViewModels);
      }
    }

    if (response is Fail) {
      var fail = response as Fail;

      if (fail.isNetwork) {
        return Response.nwError(fail.throwable);
      } else {
        return Response.dbError(fail.throwable);
      }
    }
  }
}
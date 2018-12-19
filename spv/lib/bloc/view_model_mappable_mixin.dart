import 'package:spv/models/response.dart';

mixin ViewModelMappable {
  Response<List<R>> mapToViewModels<T, R>(Response<List<T>> response,
      [List<R> mapListOfDataToViewModels(List<T> list)]) {
    if (response is Data) {
      var data = response as Data;
      var value = mapListOfDataToViewModels((data).value as List<T>);

      if (data.isNetwork) {
        return Response.nwSuccess(value);
      } else {
        return Response.dbSuccess(value);
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

  Response<R> mapToViewModel<T, R>(
      Response<T> response, R mapDataToViewModel(T t)) {
    if (response is Data) {
      var data = response as Data;
      var value = mapDataToViewModel(data.value);

      if (data.isNetwork) {
        return Response.nwSuccess(value);
      } else {
        return Response.dbSuccess(value);
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

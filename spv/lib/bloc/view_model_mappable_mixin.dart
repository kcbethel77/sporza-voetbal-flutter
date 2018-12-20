import 'package:spv/models/response.dart';

mixin ViewModelMappable {
  Response<R> mapToViewModels<T, R>(Response<T> response, [R mapToViewModel(T t)]) {
    Response<R> r;
    if (response is Data) {
      var data = response as Data;
      var value = mapToViewModel((data).value);

      if (data.isNetwork) {
        r = Response.nwSuccess(value);
      } else {
        r = Response.dbSuccess(value);
      }
    }

    if (response is Fail) {
      var fail = response as Fail;

      if (fail.isNetwork) {
        r = Response.nwError(fail.throwable);
      } else {
        r = Response.dbError(fail.throwable);
      }
    }

    return r;
  }
}

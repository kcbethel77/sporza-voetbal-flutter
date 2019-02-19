import 'package:spv/service/models/response.dart';

mixin ViewModelMappable {
  Response<R> mapToViewModels<T, R>(Response<T> response, Function func, {extraParam1, extraParam2}) {
    Response<R> r;
    if (response is Data) {
      var data = response as Data;

      var value;

      //This feels like cheating
      if (extraParam1 == null && extraParam2 == null) {
        value = func(data.value);
      }
      if (extraParam1 != null && extraParam2 == null) {
        value = func(data.value, extraParam1);
      }
      if (extraParam1 != null && extraParam2 != null) {
        value = func(data.value, extraParam1, extraParam2);
      }

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

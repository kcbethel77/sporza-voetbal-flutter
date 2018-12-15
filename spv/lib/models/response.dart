abstract class Response<T> {
  factory Response.nwSuccess(T value) {
    return Data(value, true);
  }

  factory Response.dbSuccess(T value) {
    return Data(value, false);
  }

  factory Response.nwError(Error err) {
    return Error<T>(err, true);
  }

  factory Response.dbError(Error err) {
    return Error<T>(err, false);
  }
}

class Error<T> implements Response<T> {
  final Error throwable;
  final bool _networkError;

  bool get isNetwork => _networkError;

  bool get isDatabase => !_networkError;

  const Error(this.throwable, this._networkError);
}


class Data<T> implements Response<T> {
  final T value;
  final bool _networkSuccess;

  bool get isNetwork => _networkSuccess;

  bool get isDatabase => !_networkSuccess;

  const Data(this.value, this._networkSuccess);
}

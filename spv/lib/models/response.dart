abstract class Response<T> {
  factory Response.nwSuccess(T value) {
    return Data(value, true);
  }

  factory Response.dbSuccess(T value) {
    return Data(value, false);
  }

  factory Response.nwError(Error err) {
    return Fail<T>(err, true);
  }

  factory Response.dbError(Error err) {
    return Fail<T>(err, false);
  }
}

class Fail<T> implements Response<T> {
  final Error throwable;
  final bool _networkError;

  bool get isNetwork => _networkError;

  bool get isDatabase => !_networkError;

  const Fail(this.throwable, this._networkError);
}


class Data<T> implements Response<T> {
  final T value;
  final bool _networkSuccess;

  bool get isNetwork => _networkSuccess;

  bool get isDatabase {
    return !_networkSuccess;
  }

  const Data(this.value, this._networkSuccess);
}

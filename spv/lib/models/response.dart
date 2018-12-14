abstract class Response<T> {
  factory Response.success(T value, bool isNetwork) {
    return Data(value, isNetwork);
  }

  factory Response.nwError(Error err) {
    return NwError(err);
  }

  factory Response.dbError(Error err) {
    return DbError(err);
  }
}

class DbError<T> implements Response<T> {
  final Error throwable;

  const DbError(this.throwable);
}

class NwError<T> implements Response<T> {
  final Error throwable;

  const NwError(this.throwable);
}

class Data<T> implements Response<T> {
  final T value;
  final bool _networkSuccess;

  bool get isNetwork => _networkSuccess;

  bool get isDatabase => !_networkSuccess;

  const Data(this.value, this._networkSuccess);
}

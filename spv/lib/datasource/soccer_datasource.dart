import 'package:rxdart/rxdart.dart';
import 'package:spv/datasource/fetch_type.dart';

abstract class SporzaSoccerDataSource<T> {
  Observable<List<T>> getT<T>(final DatasourceType fetchType);
}
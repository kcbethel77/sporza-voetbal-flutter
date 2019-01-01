import 'package:rxdart/rxdart.dart';
import 'package:service_layer_spv/src/datasource/data_source_type.dart';

abstract class SporzaSoccerDataSource<T> {
  Observable<List<T>> getListOfT<T>(final DatasourceType datasourceType);

  Observable<T> getT<T>(final DatasourceType datasourceType);
}

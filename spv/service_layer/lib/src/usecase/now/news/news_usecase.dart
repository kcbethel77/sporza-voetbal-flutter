import 'package:rxdart/rxdart.dart';
import 'package:service_layer_spv/src/datasource/cache/cache.dart';
import 'package:service_layer_spv/src/datasource/data_source_type.dart';
import 'package:service_layer_spv/src/datasource/soccer_datasource.dart';
import 'package:service_layer_spv/src/models/response.dart';
import 'package:service_layer_spv/src/usecase/list_usecase.dart';
import 'package:service_layer_spv/src/models/network/network_models.dart';

class NewsUseCase extends ListUseCase<News> {
  SporzaSoccerDataSource _network;
  Cache _cache;

  NewsUseCase(this._cache, this._network);

  @override
  DatasourceType<News> get dataSourceType => newsDatasourceType;

  Observable<Response<List<News>>> get news => stream();

  @override
  Cache get cache => _cache;

  @override
  SporzaSoccerDataSource get network => _network;
}

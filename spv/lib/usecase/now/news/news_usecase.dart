import 'package:rxdart/rxdart.dart';
import 'package:spv/datasource/cache/cache.dart';
import 'package:spv/datasource/data_source_type.dart';
import 'package:spv/datasource/soccer_datasource.dart';
import 'package:spv/models/response.dart';
import 'package:spv/usecase/list_usecase.dart';
import 'package:spv/models/network/network_models.dart';

class NewsUseCase extends ListUseCase<News> {
  SporzaSoccerDataSource _network;
  Cache _cache;

  NewsUseCase(this._cache, this._network);

  @override
  DatasourceType<News> get dataSourceType => newsDatasourceType;

  Observable<Response<List<News>>> get news => merged;

  @override
  Cache get cache => _cache;

  @override
  SporzaSoccerDataSource get network => _network;
}

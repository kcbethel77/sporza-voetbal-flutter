import 'package:rxdart/rxdart.dart';
import 'package:spv/model/network/network_models.dart';
import 'package:spv/service/datasource/cache/cache.dart';
import 'package:spv/service/datasource/data_source_type.dart';
import 'package:spv/service/datasource/soccer_datasource.dart';
import 'package:spv/service/models/response.dart';
import 'package:spv/service/usecase/list_usecase.dart';

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

import 'package:rxdart/rxdart.dart';
import 'package:spv/model/network/network_models.dart';
import 'package:spv/service/datasource/cache/cache.dart';
import 'package:spv/service/datasource/data_source_type.dart';
import 'package:spv/service/datasource/soccer_datasource.dart';
import 'package:spv/service/models/response.dart';
import 'package:spv/service/usecase/list_usecase.dart';

class VideoUseCase extends ListUseCase<Video> {

  SporzaSoccerDataSource _network;
  Cache _cache;

  VideoUseCase(this._cache,this._network);

  @override
  DatasourceType<Video> get dataSourceType => videoDatasourceType;

  Observable<Response<List<Video>>> get video => stream();

  @override
  Cache get cache => _cache;

  @override
  SporzaSoccerDataSource get network => _network;
}

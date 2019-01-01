import 'package:rxdart/rxdart.dart';
import 'package:service_layer_spv/src/datasource/cache/cache.dart';
import 'package:service_layer_spv/src/datasource/data_source_type.dart';
import 'package:service_layer_spv/src/datasource/soccer_datasource.dart';
import 'package:service_layer_spv/src/models/network/network_models.dart';
import 'package:service_layer_spv/src/models/response.dart';
import 'package:service_layer_spv/src/usecase/list_usecase.dart';

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

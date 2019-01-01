import 'package:rxdart/rxdart.dart';
import 'package:service_layer_spv/src/datasource/cache/cache.dart';
import 'package:service_layer_spv/src/datasource/soccer_datasource.dart';
import 'package:service_layer_spv/src/models/model_mapper.dart';
import 'package:service_layer_spv/src/bloc/view_model_mappable_mixin.dart';
import 'package:service_layer_spv/src/models/response.dart';
import 'package:service_layer_spv/src/models/view/view_models.dart' as view;
import 'package:service_layer_spv/src/models/network/network_models.dart' as network;
import 'package:service_layer_spv/src/usecase/usecase.dart';

class HomeBloc with ViewModelMappable {
  final NewsUseCase _newsUseCase;
  final VideoUseCase _videoUseCase;

  HomeBloc(final Cache _cache, final SporzaSoccerDataSource _network)
      : _newsUseCase = NewsUseCase(_cache, _network),
        _videoUseCase = VideoUseCase(_cache, _network);

  Observable<Response<List<view.News>>> get news => _newsUseCase.news.map(
      (response) => mapToViewModels<List<network.News>, List<view.News>>(response, Mapper.mapListOfNewsToViewModels));

  Observable<Response<List<view.Video>>> get videos => _videoUseCase.video.map((response) =>
      mapToViewModels<List<network.Video>, List<view.Video>>(response, Mapper.mapListOfVideosToViewModels));
}

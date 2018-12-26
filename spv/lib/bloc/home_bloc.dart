import 'package:rxdart/rxdart.dart';
import 'package:spv/models/model_mapper.dart';
import 'package:spv/bloc/view_model_mappable_mixin.dart';
import 'package:spv/models/response.dart';
import 'package:spv/models/view/view_models.dart' as view;
import 'package:spv/models/network/network_models.dart' as network;
import 'package:spv/usecase/usecase.dart';

class HomeBloc with ViewModelMappable {
  final NewsUseCase _newsUseCase;
  final VideoUseCase _videoUseCase;

  HomeBloc(this._newsUseCase, this._videoUseCase);

  Observable<Response<List<view.News>>> get news => _newsUseCase.news.map(
      (response) => mapToViewModels<List<network.News>, List<view.News>>(response, Mapper.mapListOfNewsToViewModels));

  Observable<Response<List<view.Video>>> get videos => _videoUseCase.video.map((response) =>
      mapToViewModels<List<network.Video>, List<view.Video>>(response, Mapper.mapListOfVideosToViewModels));
}

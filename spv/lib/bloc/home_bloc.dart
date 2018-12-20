import 'package:rxdart/rxdart.dart';
import 'package:spv/models/model_mapper.dart';
import 'package:spv/bloc/view_model_mappable_mixin.dart';
import 'package:spv/models/response.dart';
import 'package:spv/models/view/view_models.dart';
import 'package:spv/usecase/usecase.dart';

class HomeBloc with ViewModelMappable {
  final NewsUseCase _newsUseCase;
  final VideoUseCase _videoUseCase;

  HomeBloc(this._newsUseCase, this._videoUseCase);

  Observable<Response<List<News>>> get news =>
      _newsUseCase.news.map((response) =>
          mapToViewModels(response, Mapper.mapListOfNewsToViewModels));

  Observable<Response<List<Video>>> get videos =>
      _videoUseCase.video.map((response) =>
          mapToViewModels(response, Mapper.mapListOfVideosToViewModels));
}

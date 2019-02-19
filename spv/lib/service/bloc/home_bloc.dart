import 'package:rxdart/rxdart.dart';
import 'package:spv/service/bloc/view_model_mappable_mixin.dart';
import 'package:spv/service/datasource/cache/cache.dart';
import 'package:spv/service/datasource/soccer_datasource.dart';
import 'package:spv/model/model_mapper.dart';
import 'package:spv/model/network/news.dart' as networkNews;
import 'package:spv/model/network/video.dart' as networkVideo;
import 'package:spv/service/models/response.dart';
import 'package:spv/service/usecase/now/news/news_usecase.dart';
import 'package:spv/service/usecase/now/videos/video_usecase.dart';
import 'package:spv/model/view/news.dart' as newsViewModel;
import 'package:spv/model/view/video.dart' as videoViewModel;

class HomeBloc with ViewModelMappable {
  final NewsUseCase _newsUseCase;
  final VideoUseCase _videoUseCase;

  HomeBloc(final Cache _cache, final SporzaSoccerDataSource _network)
      : _newsUseCase = NewsUseCase(_cache, _network),
        _videoUseCase = VideoUseCase(_cache, _network);

  Observable<Response<List<newsViewModel.News>>> get news => _newsUseCase.news.map((response) =>
      mapToViewModels<List<networkNews.News>, List<newsViewModel.News>>(response, Mapper.mapListOfNewsToViewModels));

  Observable<Response<List<videoViewModel.Video>>> get videos =>
      _videoUseCase.video.map((response) => mapToViewModels<List<networkVideo.Video>, List<videoViewModel.Video>>(
          response, Mapper.mapListOfVideosToViewModels));
}

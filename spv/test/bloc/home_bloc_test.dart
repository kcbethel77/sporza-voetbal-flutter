import 'package:spv/models/response.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart/rxdart.dart';
import '../utils/index.dart';
import 'package:spv/bloc/bloc.dart';
import 'package:spv/usecase/usecase.dart';

void main() {
  final NewsUseCase newsUseCase = MockNewsUseCase();
  final VideoUseCase videoUseCase = MockVideoUseCase();

  final HomeBloc bloc = HomeBloc(newsUseCase, videoUseCase);

  group("home bloc", () {
    test("news", () async {
      when(newsUseCase.news).thenAnswer((_) => Observable.just(Response.nwSuccess([buildNewsItem()])));
      var emissions = await bloc.news.toList();
      expect(emissions.length, 1);
    });

    test("video", ()  async {
      when(videoUseCase.video).thenAnswer((_) => Observable.just(Response.nwSuccess([buildVideoItem()])));
      var emissions = await bloc.videos.toList();
      expect(emissions.length, 1);
    });
  });
}

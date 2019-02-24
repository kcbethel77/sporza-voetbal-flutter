import 'package:spv/service/bloc/home_bloc.dart';
import 'package:spv/model/network/network_models.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart/rxdart.dart';

import '../../utils/index.dart';

void main() {
  final MockCache cache = MockCache();

  final MockSporzaSoccerDataSource network = MockSporzaSoccerDataSource();

  final HomeBloc bloc = HomeBloc(cache, network);

  group("home bloc", () {
    test("news", () async {
      when(cache.getListOfT<News>(any)).thenAnswer((_) => Observable.empty());
      when(network.getListOfT<News>(any)).thenAnswer((_) => Observable.just([buildNewsItem()]));
      var emissions = await bloc.news.toList();
      expect(emissions.length, 1);
    });

    test("video", () async {
      when(cache.getListOfT<Video>(any)).thenAnswer((_) => Observable.empty());
      when(network.getListOfT<Video>(any)).thenAnswer((_) => Observable.just([buildVideoItem()]));
      var emissions = await bloc.videos.toList();
      expect(emissions.length, 1);
    });
  });
}

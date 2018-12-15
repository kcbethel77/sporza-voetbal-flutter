import 'package:rxdart/rxdart.dart';
import 'package:spv/datasource/data_source_type.dart';
import 'package:spv/models/network/news.dart';
import 'package:spv/usecase/now/news/news_usecase.dart';
import 'package:test_api/test_api.dart';
import 'package:mockito/mockito.dart';

import '../../../utils/mocks/mocks.dart';
import '../../../utils/model_builder.dart';

final List<News> newsItems = List.of([buildNewsItem()]);

Observable<List<News>> get newsSuccessStream => Observable.just(newsItems);

Observable<List<News>> get newsErrorStream => Observable.error(Error());

void main() {
  final MockCache mockCache = MockCache();
  final MockSporzaSoccerDataSource mockNetwork = MockSporzaSoccerDataSource();

  final NewsUseCase newsUseCase = NewsUseCase(mockCache, mockNetwork);

  group("a news use case", () {
    test("when network success and db success should emit 2 items", () async {
      when(mockCache.getListOfT(newsDatasourceType)).thenAnswer((_) => newsSuccessStream);
      when(mockNetwork.getListOfT(newsDatasourceType)).thenAnswer((_) => newsSuccessStream);

      List<List<News>> emissions = await newsUseCase.news.toList();
      expect(emissions.length, 2);
    });

    test("when network success should save to db", () {
      when(mockCache.getListOfT(newsDatasourceType)).thenAnswer((_) => newsSuccessStream);
      when(mockNetwork.getListOfT(newsDatasourceType)).thenAnswer((_) => newsSuccessStream);

      newsUseCase.news;

      verify(mockCache.saveItems(newsDatasourceType, newsItems));
    });

    test("when network success and db failure should have 2 emissions one of which is an empty list", () async {
      when(mockCache.getListOfT(newsDatasourceType)).thenAnswer((_) => newsErrorStream);
      when(mockNetwork.getListOfT(newsDatasourceType)).thenAnswer((_) => newsSuccessStream);

      List<List<News>> emissions = await newsUseCase.news.toList();

      expect(emissions.length, 2);
      expect(emissions[0].length, 1);
      expect(emissions[1].length, 0);
    });

    test("when network error and db success should have 2 emissions one of which is an empty list", () async {
      when(mockCache.getListOfT(newsDatasourceType)).thenAnswer((_) => newsSuccessStream);
      when(mockNetwork.getListOfT(newsDatasourceType)).thenAnswer((_) => newsErrorStream);

      List<List<News>> emissions = await newsUseCase.news.toList();

      expect(emissions.length, 2);
      expect(emissions[0].length, 1);
      expect(emissions[1].length, 0);
    });
  });
}

import 'package:mockito/mockito.dart';
import 'package:rxdart/src/observables/observable.dart';
import 'package:spv/datasource/cache/cache.dart';
import 'package:spv/datasource/data_source_type.dart';
import 'package:spv/datasource/soccer_datasource.dart';
import 'package:spv/models/response.dart';
import 'package:spv/usecase/list_use_case.dart';
import 'package:spv/usecase/now/news/news_usecase.dart';
import 'package:test/test.dart';

import '../utils/mocks/mocks.dart';
import '../utils/model_builder.dart';

final mockDatasourceType = MockDatasourceType<String>();

class StubbedStringListUseCase extends ListUseCase {
  StubbedStringListUseCase(Cache cache, SporzaSoccerDataSource network) : super(cache, network);

  @override
  DatasourceType get dataSourceType => mockDatasourceType;
}

Observable<List<String>> get aStringList => Observable.just(["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]);

void main() {
  var mockCache = MockCache();
  var mockNetwork = MockSporzaSoccerDataSource();

  var useCase = StubbedStringListUseCase(mockCache, mockNetwork);

  group("happy path", () {
    test("SUCCESS network and SUCCESS db", () async {
      when(mockNetwork.getListOfT(mockDatasourceType)).thenAnswer((_) => aStringList);
      when(mockCache.getListOfT(mockDatasourceType)).thenAnswer((_) => aStringList);

      List<Response<List>> emissions = await useCase.mergeNetworkAndDb.toList();

      expect(emissions.length, 2);
    });
  });
}

import 'package:mockito/mockito.dart';
import 'package:rxdart/src/observables/observable.dart';
import 'package:spv/datasource/cache/cache.dart';
import 'package:spv/datasource/data_source_type.dart';
import 'package:spv/datasource/soccer_datasource.dart';
import 'package:spv/models/response.dart' as resp;
import 'package:spv/usecase/list_usecase.dart';
import 'package:test/test.dart';

import '../utils/index.dart';

final mockDatasourceType = MockDatasourceType<String>();

class StubbedStringListUseCase extends ListUseCase {
  final SporzaSoccerDataSource _network;
  final Cache _cache;

  StubbedStringListUseCase(this._cache, this._network);

  @override
  DatasourceType get dataSourceType => mockDatasourceType;

  @override
  Cache get cache => _cache;

  @override
  SporzaSoccerDataSource get network => _network;
}

const List<String> aStringList = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"];
Error someError = Error();

Observable<List<String>> get aStringListObservable => Observable.just(aStringList);

void main() {
  var mockCache = MockCache();
  var mockNetwork = MockSporzaSoccerDataSource();

  var useCase = StubbedStringListUseCase(mockCache, mockNetwork);

  group("SUCCESS network and SUCCESS db", () {
    when(mockNetwork.getListOfT(mockDatasourceType)).thenAnswer((_) => aStringListObservable);
    when(mockCache.getListOfT(mockDatasourceType)).thenAnswer((_) => aStringListObservable);

    var emissions = useCase.stream().toList();

    test("should have 2 emissions", () async {
      expect((await emissions).length, 2);
    });

    test("should contain a network success", () async {
      var networkSuccess = ((await emissions)[0] as resp.Data);
      expect(networkSuccess.value, aStringList);
      expect(networkSuccess.isNetwork, true);
    });

    test("should contain a database success", () async {
      var dbSuccess = ((await emissions)[1] as resp.Data);
      expect(dbSuccess.value, aStringList);
      expect(dbSuccess.isDatabase, true);
    });
  });

  group("SUCCESS network and FAILURE db", () {
    when(mockNetwork.getListOfT(mockDatasourceType)).thenAnswer((_) => aStringListObservable);
    when(mockCache.getListOfT(mockDatasourceType)).thenAnswer((_) => Observable.error(someError));

    var emissions = useCase.stream().toList();

    test("should have 2 emissions", () async {
      expect((await emissions).length, 2);
    });

    test("should contain a network success", () async {
      var networkSuccess = ((await emissions)[0] as resp.Data);
      expect(networkSuccess.value, aStringList);
      expect(networkSuccess.isNetwork, true);
    });

    test("should contain a database failure", () async {
      var dbError = ((await emissions)[1] as resp.Fail);
      expect(dbError.throwable, someError);
      expect(dbError.isDatabase, true);
    });
  });

  group("SUCCESS network and FAILURE db", () {
    when(mockNetwork.getListOfT(mockDatasourceType)).thenAnswer((_) => Observable.error(someError));
    when(mockCache.getListOfT(mockDatasourceType)).thenAnswer((_) => aStringListObservable);

    var emissions = useCase.stream().toList();

    test("should have 2 emissions", () async {
      expect((await emissions).length, 2);
    });

    test("should contain a db success", () async {
      var networkSuccess = ((await emissions)[0] as resp.Data);
      expect(networkSuccess.value, aStringList);
      expect(networkSuccess.isNetwork, false);
    });

    test("should contain a network failure", () async {
      var dbError = ((await emissions)[1] as resp.Fail);
      expect(dbError.throwable, someError);
      expect(dbError.isDatabase, false);
    });
  });
}

import 'package:rxdart/rxdart.dart';
import 'package:spv/datasource/cache/cache.dart';
import 'package:spv/datasource/data_source_type.dart';
import 'package:spv/datasource/soccer_datasource.dart';
import 'package:test/test.dart';
import 'package:spv/models/response.dart' as resp;
import 'package:mockito/mockito.dart';
import 'package:spv/usecase/usecase_mixin.dart';

import '../utils/index.dart';

final mockDatasourceType = MockDatasourceType<String>();

class StubbedStringUseCase with UseCase {
  final SporzaSoccerDataSource _network;
  final Cache _cache;

  StubbedStringUseCase(this._network, this._cache);

  @override
  Cache get cache => _cache;

  @override
  DatasourceType get dataSourceType => mockDatasourceType;

  @override
  SporzaSoccerDataSource get network => _network;
}

const String aString= "a string";
Error someError = Error();
Observable<String> get aStringObservable => Observable.just(aString);

void main() {
  var mockCache = MockCache();
  var mockNetwork = MockSporzaSoccerDataSource();

  var useCase = StubbedStringUseCase(mockNetwork, mockCache);

  group("SUCCESS network and SUCCESS db", () {
    when(mockNetwork.getT(mockDatasourceType)).thenAnswer((_) => aStringObservable);
    when(mockCache.getT(mockDatasourceType)).thenAnswer((_) => aStringObservable);

    var emissions = useCase.merged.toList();

    test("should have 2 emissions", () async {
      expect((await emissions).length, 2);
    });
    test("should contain a network success", () async {
      var networkSuccess = ((await emissions)[0] as resp.Data);
      expect(networkSuccess.value, aString);
      expect(networkSuccess.isNetwork, true);
    });

    test("should contain a database success", () async {
      var dbSuccess = ((await emissions)[1] as resp.Data);
      expect(dbSuccess.value, aString);
      expect(dbSuccess.isDatabase, true);
    });
  });

  group("SUCCESS network and FAILURE db", () {
    when(mockNetwork.getT(mockDatasourceType)).thenAnswer((_) => aStringObservable);
    when(mockCache.getT(mockDatasourceType)).thenAnswer((_) => Observable.error(someError));

    var emissions = useCase.merged.toList();

    test("should have 2 emissions", () async {
      expect((await emissions).length, 2);
    });

    test("should contain a network success", () async {
      var networkSuccess = ((await emissions)[0] as resp.Data);
      expect(networkSuccess.value, aString);
      expect(networkSuccess.isNetwork, true);
    });

    test("should contain a database failure", () async {
      var dbError = ((await emissions)[1] as resp.Fail);
      expect(dbError.throwable, someError);
      expect(dbError.isDatabase, true);
    });
  });

  group("SUCCESS network and FAILURE db", () {
    when(mockNetwork.getT(mockDatasourceType)).thenAnswer((_) => Observable.error(someError));
    when(mockCache.getT(mockDatasourceType)).thenAnswer((_) => aStringObservable);

    var emissions = useCase.merged.toList();

    test("should have 2 emissions", () async {
      expect((await emissions).length, 2);
    });

    test("should contain a db success", () async {
      var networkSuccess = ((await emissions)[0] as resp.Data);
      expect(networkSuccess.value, aString);
      expect(networkSuccess.isNetwork, false);
    });

    test("should contain a network failure", () async {
      var dbError = ((await emissions)[1] as resp.Fail);
      expect(dbError.throwable, someError);
      expect(dbError.isDatabase, false);
    });
  });
}


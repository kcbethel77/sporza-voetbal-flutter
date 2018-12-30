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

const String aString = "a string";
const String aSecondString = "a second string";
Error someError = Error();

Observable<String> get aStringObservable => Observable.defer(() => Observable.just(aString));

Observable<String> get aStringObservableError => Observable.error(someError);

void main() {
  var mockCache = MockCache();
  var mockNetwork = MockSporzaSoccerDataSource();

  setUp(() {
    reset(mockCache);
    reset(mockNetwork);
  });

  group("single call", () {
    group("SUCCESS network and SUCCESS db", () {
      var useCase = StubbedStringUseCase(mockNetwork, mockCache);
      when(mockNetwork.getT(mockDatasourceType)).thenAnswer((_) => aStringObservable);
      when(mockCache.getT(mockDatasourceType)).thenAnswer((_) => aStringObservable);

      var emissions = useCase.stream().toList();

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
      var useCase = StubbedStringUseCase(mockNetwork, mockCache);
      when(mockNetwork.getT(mockDatasourceType)).thenAnswer((_) => aStringObservable);
      when(mockCache.getT(mockDatasourceType)).thenAnswer((_) => aStringObservableError);

      var emissions = useCase.stream().toList();

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
      var useCase = StubbedStringUseCase(mockNetwork, mockCache);
      when(mockNetwork.getT(mockDatasourceType)).thenAnswer((_) => aStringObservableError);
      when(mockCache.getT(mockDatasourceType)).thenAnswer((_) => aStringObservable);

      var emissions = useCase.stream().toList();

      test("should have 2 emissions", () async {
        expect((await emissions).length, 2);
      });

      test("should contain a db success", () async {
        var dbSuccess = ((await emissions)[0] as resp.Data);
        expect(dbSuccess.value, aString);
        expect(dbSuccess.isNetwork, false);
      });

      test("should contain a network failure", () async {
        var networkError = ((await emissions)[1] as resp.Fail);
        expect(networkError.throwable, someError);
        expect(networkError.isDatabase, false);
      });
    });
  });

  group("cached call", () {
    group("SUCCESS network then FAILURE network, SUCCESS db", () {
      var useCase = StubbedStringUseCase(mockNetwork, mockCache);
      var networkResponses = [aStringObservable, aStringObservableError];

      group("first subscription", () {
        test("it should succeed for both calls", () async {
          when(mockNetwork.getT(mockDatasourceType)).thenAnswer((_) => networkResponses.removeAt(0));
          when(mockCache.getT(mockDatasourceType)).thenAnswer((_) => aStringObservable);

          var firstEmissions = await useCase.stream().toList();
          expect(firstEmissions.length, 2);

          var nwData = firstEmissions[0] as resp.Data;
          expect(nwData.value, aString);
          expect(nwData.isNetwork, true);

          var dbData = firstEmissions[1] as resp.Data;
          expect(dbData.value, aString);
          expect(dbData.isDatabase, true);
        });
      });

      group("second subscription", () {
        test("it should have cached the results of the previous emission", () async {
          when(mockNetwork.getT(mockDatasourceType)).thenAnswer((_) => networkResponses.removeAt(0));
          when(mockCache.getT(mockDatasourceType)).thenAnswer((_) => aStringObservable);

          var secondEmissions = await useCase.stream().toList();
          expect(secondEmissions.length, 2);

          var nwData = secondEmissions[0] as resp.Data;
          expect(nwData.value, aString);
          expect(nwData.isNetwork, true);

          var dbData = secondEmissions[1] as resp.Data;
          expect(dbData.value, aString);
          expect(dbData.isDatabase, true);
        });
      });
    });

    group("FAILURE network, then SUCCESS network with SUCCESS db", () {
      var useCase = StubbedStringUseCase(mockNetwork, mockCache);
      var networkResponses = [aStringObservableError, aStringObservable];

      group("first subscription", () {
        test("it should have 1 network error and 1 db success", () async {
          when(mockNetwork.getT(mockDatasourceType)).thenAnswer((_) => networkResponses.removeAt(0));
          when(mockCache.getT(mockDatasourceType)).thenAnswer((_) => aStringObservable);

          var firstEmissions = await useCase.stream().toList();
          expect(firstEmissions.length, 2);

          var nwData = firstEmissions[0] as resp.Data;
          expect(nwData.value, aString);
          expect(nwData.isDatabase, true);

          var dbData = firstEmissions[1] as resp.Fail;
          expect(dbData.throwable, someError);
          expect(dbData.isNetwork, true);
        });
      });

      group("second subscription", () {
        test("it should not have cached the values", () async {
          when(mockNetwork.getT(mockDatasourceType)).thenAnswer((_) => networkResponses.removeAt(0));
          when(mockCache.getT(mockDatasourceType)).thenAnswer((_) => aStringObservable);

          var secondEmissions = await useCase.stream().toList();
          expect(secondEmissions.length, 2);

          var nwData = secondEmissions[0] as resp.Data;
          expect(nwData.value, aString);
          expect(nwData.isNetwork, true);

          var dbData = secondEmissions[1] as resp.Data;
          expect(dbData.value, aString);
          expect(dbData.isDatabase, true);
        });
      });
    });

    group("if cache should refresh", () {
      group("SUCCESS network, SUCCESS db", () {
        var useCase = StubbedStringUseCase(mockNetwork, mockCache);
        var networkResponses = [aStringObservable, Observable.just(aSecondString)];

        group("first subscription", () {
          test("it should return the first success results", () async {
            when(mockNetwork.getT(mockDatasourceType)).thenAnswer((_) => networkResponses.removeAt(0));
            when(mockCache.getT(mockDatasourceType)).thenAnswer((_) => aStringObservable);

            var firstEmissions = await useCase.stream(shouldRefresh: true).toList();
            expect(firstEmissions.length, 2);

            var nwData = firstEmissions[0] as resp.Data;
            expect(nwData.value, aString);
            expect(nwData.isNetwork, true);

            var dbData = firstEmissions[1] as resp.Data;
            expect(dbData.value, aString);
            expect(dbData.isDatabase, true);
          });
        });

        group("second subscription should return the second result", () {
          test("it should return the second success results", () async {
            when(mockNetwork.getT(mockDatasourceType)).thenAnswer((_) => networkResponses.removeAt(0));
            when(mockCache.getT(mockDatasourceType)).thenAnswer((_) => aStringObservable);

            var firstEmissions = await useCase.stream(shouldRefresh: true).toList();
            expect(firstEmissions.length, 2);

            var nwData = firstEmissions[0] as resp.Data;
            expect(nwData.value, aSecondString);
            expect(nwData.isNetwork, true);

            var dbData = firstEmissions[1] as resp.Data;
            expect(dbData.value, aString);
            expect(dbData.isDatabase, true);
          });
        });
      });
    });
  });
}

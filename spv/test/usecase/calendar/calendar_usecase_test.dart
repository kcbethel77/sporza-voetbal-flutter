import 'package:rxdart/rxdart.dart';
import 'package:spv/models/network/network_models.dart';
import 'package:spv/usecase/use_case.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';

import '../../utils/spv_test_utils.dart';

void main() {
  MockCache cache = MockCache();
  when(cache.getT<Competition>(any)).thenAnswer((_) => Observable.empty());

  MockSporzaSoccerDataSource network = MockSporzaSoccerDataSource();

  CalendarForCompetitionUseCase calendarForCompetitionUseCase = CalendarForCompetitionUseCase("42", cache, network);

  group("calendar for competition use case", () {
    test("simple test", () {
      when(network.getT<Competition>(any)).thenAnswer((_) => Observable.just(buildCompetition()));

      calendarForCompetitionUseCase.calendarForCompetition.listen(expectAsync1((resp) {
        expect(resp, isNull);
      }));

      //calendarForCompetitionUseCase.calendarForCompetition.listen(expectAsync1((Response<Competition> r) {
      //  expect((r as Data<Competition>).value, isNotNull);
      //}));
    });
  });
}

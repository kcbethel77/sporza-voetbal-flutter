import 'package:rxdart/rxdart.dart';
import 'package:spv/service/datasource/data_source_type.dart';
import 'package:spv/model/network/network_models.dart';
import 'package:spv/service/models/response.dart';
import 'package:spv/service/usecase/usecase.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';

import '../../utils/index.dart';

const _competitionId = "43";

void main() {
  MockCache cache = MockCache();
  when(cache.getT<Competition>(argThat(equals(CalendarForCompetitionDataSourceType(_competitionId)))))
      .thenAnswer((_) => Observable.empty());

  MockSporzaSoccerDataSource network = MockSporzaSoccerDataSource();

  CalendarUseCase calendarUseCase = CalendarUseCase(_competitionId, cache, network);

  group("calendar for competition use case", () {
    test("simple test", () {
      Competition competition = buildCompetition();
      when(network.getT<Competition>(any)).thenAnswer((_) => Observable.just(competition));

      calendarUseCase.calendar.listen(expectAsync1((resp) {
        expect((resp as Data<Competition>).value, competition);
      }));
    });
  });
}

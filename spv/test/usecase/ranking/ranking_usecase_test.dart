import 'package:spv/datasource/data_source_type.dart';
import 'package:spv/models/network/network_models.dart';
import 'package:spv/models/response.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart/rxdart.dart';
import 'package:spv/usecase/usecase.dart';

import '../../utils/spv_test_utils.dart';

const _competitionId = "43";

void main() {
  MockCache cache = MockCache();
  when(cache.getT<Competition>(argThat(equals(RankingForCompetitionDataSourceType(_competitionId)))))
      .thenAnswer((_) => Observable.empty());

  MockSporzaSoccerDataSource network = MockSporzaSoccerDataSource();

  RankingUseCase rankingUseCase = RankingUseCase(_competitionId, cache, network);

  group("ranking use case", () {
    test("simple test", () {
      Competition competition = buildCompetition();
      when(network.getT<Competition>(any)).thenAnswer((_) => Observable.just(competition));

      rankingUseCase.ranking.listen(expectAsync1((resp) {
        expect((resp as Data<Competition>).value, competition);
      }));
    });
  });
}

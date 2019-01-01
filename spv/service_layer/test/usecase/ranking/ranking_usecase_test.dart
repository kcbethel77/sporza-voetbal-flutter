import 'package:service_layer_spv/src/datasource/data_source_type.dart';
import 'package:service_layer_spv/src/models/network/network_models.dart';
import 'package:service_layer_spv/src/models/response.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart/rxdart.dart';
import 'package:service_layer_spv/src/usecase/usecase.dart';

import '../../utils/index.dart';

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

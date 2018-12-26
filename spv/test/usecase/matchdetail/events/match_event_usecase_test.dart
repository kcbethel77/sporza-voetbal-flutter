import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart/rxdart.dart';
import 'package:spv/datasource/data_source_type.dart';
import 'package:spv/models/network/network_models.dart';
import 'package:spv/models/response.dart';
import 'package:spv/usecase/usecase.dart';

import '../../../utils/index.dart';

const _matchId = "42";

void main() {
  MockCache cache = MockCache();
  when(cache.getT<MatchDetail>(
          argThat(equals(MatchDetailDataSourceType(_matchId)))))
      .thenAnswer((_) => Observable.empty());

  MockSporzaSoccerDataSource network = MockSporzaSoccerDataSource();

  MatchEventUseCase matchEventUseCase =
      MatchEventUseCase(_matchId, cache, network);

  group("match event use case", () {
    test("simple test", () {
      MatchDetail matchDetail = buildMatchDetail(homeTeam, awayTeam);
      when(network.getT<MatchDetail>(any))
          .thenAnswer((_) => Observable.just(matchDetail));

      matchEventUseCase.matchDetailInfoWithEvents.listen(expectAsync1((resp) {
        expect((resp as Data<MatchDetail>).value, matchDetail);
      }));
    });
  });
}

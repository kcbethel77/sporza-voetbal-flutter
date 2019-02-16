import 'package:common_spv/common.dart';
import 'package:service_layer_spv/src/models/response.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart/rxdart.dart';
import 'package:service_layer_spv/src/datasource/data_source_type.dart';
import 'package:service_layer_spv/src/models/network/network_models.dart';
import 'package:service_layer_spv/src/usecase/usecase.dart';

import '../../../utils/index.dart';

const _matchId = "42";
const _waitingTimeLive = 50;
const _waitingTimeNotLive = 200;
const _testingWaitTime = 500;

void main() {
  MockCache cache = MockCache();
  when(cache.getT<MatchDetail>(
          argThat(equals(MatchDetailDataSourceType(_matchId)))))
      .thenAnswer((_) => Observable.empty());

  MockSporzaSoccerDataSource network = MockSporzaSoccerDataSource();

  MatchEventUseCase matchEventUseCase = MatchEventUseCase(
    _matchId,
    cache,
    network,
    _waitingTimeLive,
    _waitingTimeNotLive,
  );

  group("match event use case", () {
    test("periodic non live match", () async {
      MatchDetail matchDetail = buildMatchDetail(
        homeTeam,
        awayTeam,
        status: MatchStatus.END,
      );
      when(network.getT<MatchDetail>(any))
          .thenAnswer((_) => Observable.just(matchDetail));

      final stopWatch = Stopwatch();
      stopWatch.start();

      var emissions = await matchEventUseCase.matchDetailInfoWithEvents
          .takeWhile((_) => stopWatch.elapsedMilliseconds <= _testingWaitTime)
          .toList();

      expect(emissions.length, 2);
    });

    test("periodic live match", () async {
      MatchDetail matchDetail = buildMatchDetail(
        homeTeam,
        awayTeam,
        homeScore: 0,
        status: MatchStatus.LIVE,
      );
      var networksModels = [
        matchDetail,
        ((matchDetail.toBuilder())..homeScore = 1).build(),
        ((matchDetail.toBuilder())..homeScore = 2).build(),
        ((matchDetail.toBuilder())..homeScore = 3).build(),
        ((matchDetail.toBuilder())..homeScore = 4).build(),
        ((matchDetail.toBuilder())..homeScore = 5).build(),
        ((matchDetail.toBuilder())..homeScore = 5).build(),
      ];

      when(network.getT<MatchDetail>(any))
          .thenAnswer((_) => Observable.just(networksModels.removeAt(0)));

      final stopWatch = Stopwatch();
      stopWatch.start();

      var emissions = await matchEventUseCase.matchDetailInfoWithEvents
          .takeWhile((_) => stopWatch.elapsedMilliseconds <= _testingWaitTime)
          .toList();

      expect(emissions.length, 6);
      expect((emissions.last as Data<MatchDetail>).value.homeScore, 5);
    });
  });
}

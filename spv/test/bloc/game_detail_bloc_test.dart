import 'package:spv/models/common/common.dart';
import 'package:spv/models/response.dart';
import 'package:spv/models/view/view_models.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart/rxdart.dart';
import 'package:spv/bloc/bloc.dart';
import 'package:spv/models/network/network_models.dart';

import '../utils/index.dart';

const String _matchId = "matchId";
const String _defaultCompLabel = "network";

const int _liveMilliSeconds = 50;
const int _nonLiveMilliseconds = 200;
const int _waitingTimeMilliseconds = 500;

int waitingTimeWithMargin(int time) => time + (time ~/ 2);

Observable<MatchDetail> _networkMatchDetailObservable({
  final String compLabel = _defaultCompLabel,
  final MatchStatus status = MatchStatus.END,
  final List<MatchEvent> matchEvents = const [],
}) =>
    Observable.just(
        buildMatchDetail(homeTeam, awayTeam, competitionLabel: compLabel, status: status, matchEvents: matchEvents));

void main() {
  MockCache cache = MockCache();
  when(cache.getT<MatchDetail>(any)).thenAnswer((_) => Observable.empty());
  MockUserPreference userPreference = MockUserPreference();
  when(userPreference.favoriteTeams).thenAnswer((_) => Observable.just([]));

  GameDetailBloc bloc;
  MockSporzaSoccerDataSource network = MockSporzaSoccerDataSource();

  setUp(() {
    bloc = GameDetailBloc(
      _matchId,
      cache,
      network,
      userPreference,
      liveRefreshInMilliSeconds: _liveMilliSeconds,
      notLiveRefreshInMilliSeconds: _nonLiveMilliseconds,
    );
  });

  group("network returns same data", () {
    test("should emit 2 network results after waiting $_waitingTimeMilliseconds milliseconds", () async {
      when(network.getT<MatchDetail>(any)).thenAnswer((_) => _networkMatchDetailObservable());

      var stopWatch = Stopwatch();
      stopWatch.start();
      var emissions =
          await bloc.headingInfo.takeWhile((_) => stopWatch.elapsedMilliseconds <= _waitingTimeMilliseconds).toList();
      stopWatch.stop();

      expect(emissions.length, 2);
      expect((emissions[0] as Data<GameDetailHeading>).value.competitionTitle, _defaultCompLabel);
      expect((emissions[1] as Data<GameDetailHeading>).value.competitionTitle, _defaultCompLabel);
    });
  });

  group("network returns different data", () {
    test("should emit 2 network results after waiting $_waitingTimeMilliseconds milliseconds", () async {
      when(network.getT<MatchDetail>(any)).thenAnswer((_) => _networkMatchDetailObservable());

      String newCompetitionLabel = "network2";

      var stopWatch = Stopwatch();
      stopWatch.start();
      var emissions = await bloc.headingInfo
          .takeWhile((_) => stopWatch.elapsedMilliseconds <= _waitingTimeMilliseconds)
          .doOnData((data) => when(network.getT<MatchDetail>(any))
              .thenAnswer((_) => _networkMatchDetailObservable(compLabel: newCompetitionLabel)))
          .toList();
      stopWatch.stop();

      expect(emissions.length, 2);
      expect((emissions[0] as Data<GameDetailHeading>).value.competitionTitle, _defaultCompLabel);
      expect((emissions[1] as Data<GameDetailHeading>).value.competitionTitle, newCompetitionLabel);
    });
  });

  group("when a live match was started", () {
    test("it should start fetching more frequently", () async {
      when(network.getT<MatchDetail>(any)).thenAnswer((_) => _networkMatchDetailObservable(status: MatchStatus.LIVE));

      var stopWatch = Stopwatch();
      stopWatch.start();
      var invocations = 0;
      var emissions = await bloc.headingInfo
          .doOnData((data) {
            when(network.getT<MatchDetail>(any)).thenAnswer(
              (_) => _networkMatchDetailObservable(
                    compLabel: "competition_$invocations",
                    status: MatchStatus.LIVE,
                  ),
            );
            invocations++;
          })
          .takeWhile((_) => stopWatch.elapsedMilliseconds <= _waitingTimeMilliseconds)
          .toList();
      stopWatch.stop();

      expect(emissions.length, 6);
      expect((emissions[0] as Data<GameDetailHeading>).value.competitionTitle, _defaultCompLabel);
      expect((emissions[1] as Data<GameDetailHeading>).value.competitionTitle, "competition_1");
      expect((emissions[2] as Data<GameDetailHeading>).value.competitionTitle, "competition_2");
      expect((emissions[3] as Data<GameDetailHeading>).value.competitionTitle, "competition_3");
      expect((emissions[4] as Data<GameDetailHeading>).value.competitionTitle, "competition_4");
      expect((emissions[5] as Data<GameDetailHeading>).value.competitionTitle, "competition_5");
    });
  });

  group("when a live match came to an end", () {
    test("it should fetch less frequently", () async {
      when(network.getT<MatchDetail>(any)).thenAnswer((_) => _networkMatchDetailObservable(status: MatchStatus.LIVE));

      var stopWatch = Stopwatch();
      stopWatch.start();
      var emissions = await bloc.headingInfo
          .takeWhile((_) => stopWatch.elapsedMilliseconds <= _waitingTimeMilliseconds)
          .doOnData((data) => when(network.getT<MatchDetail>(any))
              .thenAnswer((_) => _networkMatchDetailObservable(status: MatchStatus.END)))
          .toList();
      stopWatch.stop();

      expect(emissions.length, 3);
    });
  });

  group("match events", () {
    test("should return the view match events", () {
      when(network.getT<MatchDetail>(any)).thenAnswer((_) => _networkMatchDetailObservable(matchEvents: [
        buildMatchEvent(eventType: "COMMENT"),
        buildMatchEvent(eventType: "PHASE"),
        buildMatchEvent(eventType: "YELLOW_CARD", person: buildPerson()),
      ]));

      bloc.events.listen(expectAsync1((resp) {
        expect((resp as Data<List<Event>>).value.length, 3);
      }));
    });
  });
}

import 'package:service_layer_spv/src/models/common/common.dart';
import 'package:service_layer_spv/src/models/response.dart';
import 'package:service_layer_spv/src/models/view/view_models.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart/rxdart.dart';
import 'package:service_layer_spv/src/bloc/bloc.dart';
import 'package:service_layer_spv/src/models/network/network_models.dart';

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
    Observable.just(buildMatchDetail(homeTeam, awayTeam,
        competitionLabel: compLabel, status: status, matchEvents: matchEvents));

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

  group("heading", () {
    test(
        "should emit 2 network results after waiting $_waitingTimeMilliseconds milliseconds",
        () async {
      when(network.getT<MatchDetail>(any))
          .thenAnswer((_) => _networkMatchDetailObservable());

      bloc.headingInfo.listen(expectAsync1((resp) {
        expect((resp as Data<GameDetailHeading>).value.competitionTitle,
            _defaultCompLabel);
      }));
    });
  });

  group("match events", () {
    test("should return the view match events", () {
      when(network.getT<MatchDetail>(any))
          .thenAnswer((_) => _networkMatchDetailObservable(matchEvents: [
                buildMatchEvent(eventType: "COMMENT"),
                buildMatchEvent(eventType: "PHASE"),
                buildMatchEvent(
                    eventType: "YELLOW_CARD", person: buildPerson()),
              ]));

      bloc.events.listen(expectAsync1((resp) {
        expect((resp as Data<List<Event>>).value.length, 3);
      }));
    });
  });
}

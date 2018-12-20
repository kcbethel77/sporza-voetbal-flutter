import 'package:built_value/serializer.dart';
import 'package:spv/datasource/data_source_type.dart';
import 'package:spv/datasource/network/network.dart';
import 'package:spv/models/network/network_models.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';

import '../../utils/data_constants.dart';
import '../../utils/mocks/mocks.dart';

void main() {
  final MockHttp mockHttp = MockHttp();
  final MockResponse mockResponse = MockResponse();
  final Network nw = NetworkImpl(mockHttp);

  when(mockHttp.get(any, headers: anyNamed('headers'))).thenAnswer((_) => Future.value(mockResponse));

  group("a network implementation", () {
    test("has injected headers on client", () {
      when(mockResponse.body).thenReturn("[]");
      nw.getListOfT(newsDatasourceType).listen((resp) {
        expect(verify(mockHttp.get(any, headers: captureAnyNamed('headers'))).captured.single,
            equals({"Accept": "application/be.vrt.infostrada.v7+json", "X-Device-Id": "android"}));
      });
    });
  });

  group("news", () {
    test("can parse a news items JSON", () {
      when(mockResponse.body).thenReturn(rawNewsJson);

      nw.getListOfT<News>(newsDatasourceType).listen((resp) {
        expect(resp is List<News>, isTrue);
        expect(resp.length, 2);
      });
    });
  });

  group("video", () {
    test("can parse a video items JSON", () {
      when(mockResponse.body).thenReturn(rawVideosJson);

      nw.getListOfT<Video>(videoDatasourceType).listen((resp) {
        expect(resp is List<Video>, isTrue);
        expect(resp.length, 2);
      });
    });
  });

  group("teams", () {
    test("can parse a team items JSON", () {
      when(mockResponse.body).thenReturn(teamsJson);

      nw.getListOfT<Team>(teamDataSourceType).listen((resp) {
        expect(resp is List<Team>, isTrue);
        expect(resp.length, 2);
      });
    });
  });

  group("competition", () {
    test("can parse competition items JSON", () {
      when(mockResponse.body).thenReturn(competitionJson);

      nw.getListOfT<Competition>(competitionDataSourceType).listen((resp) {
        expect(resp is List<Competition>, isTrue);
        expect(resp.length, 2);
      });
    });

    test("can parse a calendar JSON", () async {
      when(mockResponse.body).thenReturn(calendarJson);

      final _competitionId = "48";
      final type = CalendarForCompetitionDataSourceType(_competitionId);
      nw.getT<Competition>(type).listen((resp) {
        expect(resp.id, _competitionId);
        expect(resp.phases.length, 1);
        expect(resp.phases.first.matchDays.length, 30);
        expect(resp.phases.first.ranking, isNull);
        expect(resp.phases.first.matchDays.first.matches.length, 8);
      });
    });

    test("can not parse a calendar JSON when no response", () {
      when(mockResponse.body).thenReturn("{}");

      final _competitionId = "48";
      final type = CalendarForCompetitionDataSourceType(_competitionId);
      nw.getT<Competition>(type).listen((resp) {}, onError: (err) {
        expect(err, const TypeMatcher<DeserializationError>());
      });
    });

    test("can parse a ranking JSON", () {
      when(mockResponse.body).thenReturn(rankingJson);

      final _competitionId = "48";
      final type = RankingForCompetitionDataSourceType(_competitionId);
      nw.getT<Competition>(type).listen((resp) {
        expect(resp.id, _competitionId);
        expect(resp.phases.length, 1);
        expect(resp.phases.first.matchDays, isNull);
        expect(resp.phases.first.ranking.length, 16);
        expect(resp.phases.first.ranking.first.id, "132540_5002");
      });
    });

    test("can parse a ranking JSON without rankings", () {
      when(mockResponse.body).thenReturn(rankingJsonWithoutRankings);

      final _competitionId = "48";
      final type = RankingForCompetitionDataSourceType(_competitionId);
      nw.getT<Competition>(type).listen((resp) {
        expect(resp.id, _competitionId);
        expect(resp.phases.length, 1);
        expect(resp.phases.first.matchDays, isNull);
        expect(resp.phases.first.ranking.length, 0);
      });
    });
  });
}

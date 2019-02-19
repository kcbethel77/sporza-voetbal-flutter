import 'package:spv/service/datasource/cache/cache.dart';
import 'package:spv/service/datasource/data_source_type.dart';
import 'package:test/test.dart';

import '../../utils/index.dart';

void main() {
  final CacheImpl cache = CacheImpl(path: "json");

  tearDown(() async {
    await cache.removeDir("json");
  });

  group("news caching", () {
    var newsItems = List.of([
      buildNewsItem(
        contentLinks: [
          buildLink(rel: "content"),
          buildLink(rel: "content"),
        ],
        imageLinks: [
          buildLink(rel: "img"),
          buildLink(rel: "img"),
          buildLink(rel: "img"),
        ],
      )
    ]);

    test("should successfully fetch the cached news json", () async {
      await cache.saveItems(newsDatasourceType, newsItems);

      cache.getListOfT(newsDatasourceType).listen(expectAsync1((actual) {
        expect(actual, newsItems);
      }));
    });
  });

  group("video caching", () {
    var videoItems = List.of([
      buildVideoItem(
        contentLinks: [
          buildLink(rel: "content"),
          buildLink(rel: "content1"),
        ],
        imageLinks: [
          buildLink(rel: "img"),
          buildLink(rel: "img1"),
          buildLink(rel: "img2"),
        ],
        videoLinks: [
          buildVideoLink(id: "video"),
          buildVideoLink(id: "video1"),
          buildVideoLink(id: "video2"),
          buildVideoLink(id: "video3"),
        ],
      )
    ]);

    test("should successfully fetch the cached video json", () async {
      await cache.saveItems(videoDatasourceType, videoItems);

      cache.getListOfT(videoDatasourceType).listen(expectAsync1((actual) {
        expect(actual, videoItems);
      }));
    });

    group("teams caching", () {
      var teamItems = List.of([
        buildTeam(
            id: "1", competitionIds: ["1, 2, 3"], canSelectAsFavourite: false),
        buildTeam(id: "2", competitionIds: ["4, 5, 6"]),
        buildTeam(id: "3", competitionIds: ["7, 8, 9"])
      ]);

      test("should successfully fetch the cached teams json", () async {
        await cache.saveItems(teamDataSourceType, teamItems);

        cache.getListOfT(teamDataSourceType).listen(expectAsync1((actual) {
          expect(actual, teamItems);
        }));
      });
    });
  });

  group("competition", () {
    group("calendar", () {
      var competition = buildCompetition(phases: [
        buildPhase(matchDays: [
          buildMatchDay(matches: [buildMatch(homeTeam, awayTeam)])
        ])
      ]);

      final calendarDataSourceType = CalendarForCompetitionDataSourceType("48");

      test("should save and fetch the calendar", () async {
        await cache.saveItem(calendarDataSourceType, competition);

        cache.getT(calendarDataSourceType).listen(expectAsync1((actual) {
          expect(actual, competition);
        }));
      });
    });

    group("ranking", () {
      var competition = buildCompetition(phases: [
        buildPhase(
          rankings: [buildRanking(homeTeam)],
        )
      ]);

      final rankingDataSourceType = RankingForCompetitionDataSourceType("48");

      test("should save and fetch the ranking", () async {
        await cache.saveItem(rankingDataSourceType, competition);

        cache.getT(rankingDataSourceType).listen(expectAsync1((actual) {
          expect(actual, competition);
        }));
      });
    });
  });

  group("match detail", () {
    var matchDetail = buildMatchDetail(homeTeam, awayTeam);

    final type = MatchDetailDataSourceType("42");

    test("should save and fetch the match detail", () async {
      await cache.saveItem(type, matchDetail);

      cache.getT(type).listen(expectAsync1((actual) {
        expect(actual, matchDetail);
      }));
    });
  });
}

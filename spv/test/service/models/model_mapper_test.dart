import 'package:built_collection/src/list.dart';
import 'package:spv/model/common/common_models.dart';
import 'package:spv/model/view/view_models.dart';
import 'package:spv/model/model_mapper.dart';
import 'package:spv/model/network/network_models.dart' as network;
import 'package:test/test.dart';

import '../utils/index.dart';

void main() {
  group("News", () {
    var newsViewModel = Mapper.mapNewsToViewModel(buildNewsItem());

    test("has correct id", () {
      expect(newsViewModel.id, id);
    });

    test("has correct accessibility text", () {
      expect(newsViewModel.accessibility, accessibilityText);
    });

    test("has correct contentUrl", () {
      expect(newsViewModel.contentUrl, null);
    });

    test("has correct title", () {
      expect(newsViewModel.title, title);
    });

    test("has correct description", () {
      expect(newsViewModel.description, description);
    });

    test("has coorrect image url", () {
      expect(newsViewModel.imageUrl, null);
    });

    test("has correct date", () {
      expect(newsViewModel.date, date);
    });
  });

  group("News has links", () {
    var newsViewModel = Mapper.mapNewsToViewModel(buildNewsItem(contentLinks: [
      buildLink(url: "url1"),
      buildLink(url: "url2"),
    ], imageLinks: [
      buildLink(url: "url3"),
      buildLink(url: "url4"),
    ]));

    test("has correct contentUrl", () {
      expect(newsViewModel.contentUrl, "url1");
    });

    test("has correct imageurl", () {
      expect(newsViewModel.imageUrl, "url3");
    });
  });

  group("Video", () {
    var videoViewModel = Mapper.mapVideoToViewModel(buildVideoItem());

    test("has correct id", () {
      expect(videoViewModel.id, id);
    });

    test("has correct accessibility text", () {
      expect(videoViewModel.accessibility, accessibilityText);
    });

    test("has correct title", () {
      expect(videoViewModel.title, title);
    });

    test("has correct date", () {
      expect(videoViewModel.date, date);
    });

    test("has correct content url", () {
      expect(videoViewModel.contentUrl, null);
    });

    test("has correct image url", () {
      expect(videoViewModel.imageUrl, null);
    });

    test("has correct adDomain", () {
      expect(videoViewModel.adDomain, null);
    });

    test("has correct adPartner", () {
      expect(videoViewModel.adPartner, null);
    });

    test("has correct adContent", () {
      expect(videoViewModel.adContent, null);
    });

    test("has correct adCategory", () {
      expect(videoViewModel.adCategory, null);
    });

    test("has correct adLocation", () {
      expect(videoViewModel.adLocation, null);
    });

    test("has correct adConsent", () {
      expect(videoViewModel.adConsent, null);
    });
  });

  group("Video", () {
    var videoViewModel = Mapper.mapVideoToViewModel(buildVideoItem(contentLinks: [
      buildLink(url: "url1"),
      buildLink(url: "url2"),
    ], imageLinks: [
      buildLink(url: "url3"),
      buildLink(url: "url4"),
    ], videoLinks: [
      buildVideoLink(),
    ]));

    test("has correct content url", () {
      expect(videoViewModel.contentUrl, "url1");
    });

    test("has correct image url", () {
      expect(videoViewModel.imageUrl, "url3");
    });

    test("has correct adDomain", () {
      expect(videoViewModel.adDomain, adDomain);
    });

    test("has correct adPartner", () {
      expect(videoViewModel.adPartner, adPartner);
    });

    test("has correct adContent", () {
      expect(videoViewModel.adContent, adContent);
    });

    test("has correct adCategory", () {
      expect(videoViewModel.adCategory, adCategory);
    });

    test("has correct adLocation", () {
      expect(videoViewModel.adLocation, adLocation);
    });

    test("has correct adConsent", () {
      expect(videoViewModel.adConsent, adConsent);
    });
  });

  group("Calendar", () {
    var defaultPhase = "defaultPhase";
    var phaseLabel = "phaseLabel";
    var matchDay = "matchDay";
    var favoriteTeamId = "favoriteTeam";

    final network.Competition competition = buildCompetition(
      defaultPhase: defaultPhase,
      phases: [
        buildPhase(
          label: phaseLabel,
          currentMatchDayIndex: null,
          currentMatchDay: null,
          matchDays: [
            buildMatchDay(
              name: "matchDay",
              matches: [buildMatch(homeTeam, awayTeam)],
            ),
            buildMatchDay(
              matches: [
                buildMatch(
                  buildTeam(
                    canSelectAsFavourite: null,
                    id: favoriteTeamId,
                  ),
                  awayTeam,
                  startTime: null,
                  statusLabel: null,
                ),
              ],
            ),
          ],
        ),
        buildPhase(
          id: defaultPhase,
          matchDays: [
            buildMatchDay(),
          ],
        ),
      ],
    );

    final Calendar calendar = Mapper.mapCompetitionToCalendar(
      competition,
      [favoriteTeamId],
    );

    test("has the correct competition title", () {
      expect(calendar.competitionTitle, label);
    });

    group("phases", () {
      var phases = calendar.phases;

      test("has the correct name", () {
        expect(calendar.phases.length, 2);
      });

      group("first phase", () {
        var firstPhase = phases.elementAt(0);

        test("has the correct name", () {
          expect(firstPhase.name, phaseLabel);
        });

        test("isCurrent", () {
          expect(firstPhase.isCurrent, false);
        });

        group("matchdays", () {
          var matchDays = firstPhase.matchDays;

          test("has the corrrect amount", () {
            expect(matchDays.length, 2);
          });

          group("first match day", () {
            MatchDay firstMatchDay = matchDays.elementAt(0);

            test("has the correct name", () {
              expect(firstMatchDay.name, matchDay);
            });

            test("has the correct accessibility", () {
              expect(firstMatchDay.accessibility, accessibilityText);
            });

            test("isCurrent", () {
              expect(firstMatchDay.isCurrent, false);
            });

            group("matches", () {
              BuiltList<Match> matches = firstMatchDay.matches;

              test("has the correct amount", () {
                expect(matches.length, 1);
              });

              group("first match", () {
                Match firstMatch = matches.first;

                group("home team", () {
                  var homeTeam = firstMatch.homeTeam;

                  test("has correct name", () {
                    expect(homeTeam.name, homeTeamName);
                  });

                  test("has correct iconUrl", () {
                    expect(homeTeam.iconUrl, homeTeam.iconUrl);
                  });

                  test("isFavorite", () {
                    expect(homeTeam.isFavorite, false);
                  });

                  test("canBeFavourite", () {
                    expect(homeTeam.canBeFavourite, canSelectAsFavourite);
                  });
                });

                test("has correct home score", () {
                  expect(firstMatch.homeScore, homeScore);
                });

                test("has correct away score", () {
                  expect(firstMatch.awayScore, awayScore);
                });

                test("has correct start time", () {
                  expect(firstMatch.startTime, startTime);
                });

                test("has correct status", () {
                  expect(firstMatch.status, matchStatus);
                });

                test("isKnockout", () {
                  expect(firstMatch.isKnockout, isKnockout);
                });
              });
            });
          });

          group("second match day", () {
            var secondMatchDay = matchDays.elementAt(1);

            group("first match", () {
              Match firstMatch = secondMatchDay.matches.first;

              test("has correct start time", () {
                expect(firstMatch.startTime, null);
              });

              group("home team", () {
                var homeTeam = firstMatch.homeTeam;

                test("canBeFavourite", () {
                  expect(homeTeam.canBeFavourite, true);
                });

                test("isFavourite", () {
                  expect(homeTeam.isFavorite, true);
                });
              });
            });
          });
        });
      });

      group("second phase", () {
        var secondPhase = calendar.phases.elementAt(1);

        test("has the correct name", () {
          expect(secondPhase.name, label);
        });

        test("isCurrent", () {
          expect(secondPhase.isCurrent, true);
        });

        group("matchdays", () {
          var matchDays = secondPhase.matchDays;

          test("has the correct amount", () {
            expect(matchDays.length, 1);
          });

          test("isCurrent", () {
            expect(secondPhase.isCurrent, true);
          });
        });
      });
    });
  });

  group("Ranking", () {
    final String defaultPhase = "defaultPhase";
    final int rank2 = 2;
    final network.Competition competition = buildCompetition(
      defaultPhase: defaultPhase,
      phases: [
        buildPhase(
          rankings: [
            buildRanking(homeTeam),
            buildRanking(awayTeam, rank: rank2),
          ],
        ),
        buildPhase(id: defaultPhase)
      ],
    );

    final Ranking ranking = Mapper.mapCompetitionToRanking(competition);

    test("has the correct title", () {
      expect(ranking.competitionTitle, label);
    });

    group("phases", () {
      var phases = ranking.phases;

      test("has correct amount of phases", () {
        expect(phases.length, 2);
      });

      group("first phase", () {
        var firstPhase = phases.elementAt(0);

        test("isCurrent", () {
          expect(firstPhase.isCurrent, isFalse);
        });

        test("has correct name", () {
          expect(firstPhase.name, label);
        });

        group("ranking", () {
          var rankings = firstPhase.rankings;

          group("first ranking", () {
            var firstRanking = rankings.first;

            test("has correct name", () {
              expect(firstRanking.name, homeTeam.name);
            });

            test("has correct icon url", () {
              expect(firstRanking.iconUrl, homeTeam.logoUrl);
            });

            test("has correct position", () {
              expect(firstRanking.position, rank);
            });

            test("has correct amount of matches played", () {
              expect(firstRanking.matchedPlayed, nrOfMatches);
            });

            test("has correct amount of points", () {
              expect(firstRanking.points, points);
            });
          });

          group("second ranking", () {
            var secondRanking = rankings.elementAt(1);

            test("has correct position", () {
              expect(secondRanking.position, rank2);
            });
          });
        });
      });

      group("second phase", () {
        var secondPhase = phases.elementAt(1);

        test("isCurrent", () {
          expect(secondPhase.isCurrent, isTrue);
        });
      });
    });
  });

  group("Game Detail Heading", () {
    group("competitions and teams checks", () {
      final String favoriteTeam = "favoriteTeam";
      var gameDetailHeading = Mapper.mapMatchDetailToGameDetailHeading(
        buildMatchDetail(buildTeam(id: favoriteTeam), awayTeam),
        [favoriteTeam],
      );

      test("has correct competition title", () {
        expect(gameDetailHeading.competitionTitle, label);
      });

      group("home team", () {
        final Team ht = gameDetailHeading.homeTeam;
        test("is favorite", () {
          expect(ht.isFavorite, isTrue);
        });

        test("has correct id", () {
          expect(ht.id, favoriteTeam);
        });

        test("has correct name", () {
          expect(ht.name, name);
        });

        test("has correct iconUrl", () {
          expect(ht.iconUrl, logoUrl);
        });

        test("can be favoritized", () {
          expect(ht.canBeFavourite, homeTeam.canSelectAsFavourite);
        });
      });

      group("away team", () {
        final Team at = gameDetailHeading.awayTeam;
        test("is no favorite", () {
          expect(at.isFavorite, isFalse);
        });

        test("has correct id", () {
          expect(at.id, awayTeam.id);
        });

        test("has correct name", () {
          expect(at.name, awayTeam.name);
        });

        test("has correct iconUrl", () {
          expect(at.iconUrl, awayTeam.logoUrl);
        });

        test("can be favoritized", () {
          expect(at.canBeFavourite, awayTeam.canSelectAsFavourite);
        });
      });
    });

    group("heading info", () {
      group("is of END type", () {
        group("is not of knockout type", () {
          var detailHeadingInfo = Mapper.mapMatchDetailToGameDetailHeading(
                  buildMatchDetail(homeTeam, awayTeam, status: MatchStatus.END, isKnockout: false), []).info
              as EndMatchHeadingInfo;

          test("it should have the correct score", () {
            expect(detailHeadingInfo.score, "$homeScore - $awayScore");
          });

          test("it should have the correct knock out end label", () {
            expect(detailHeadingInfo.knockoutEnd, null);
          });

          test("it should have the correct status label", () {
            expect(detailHeadingInfo.statusLabel, statusLabel);
          });
        });

        group("is of knock out type", () {
          var detailHeadingInfo = Mapper.mapMatchDetailToGameDetailHeading(
                  buildMatchDetail(homeTeam, awayTeam, status: MatchStatus.END, isKnockout: true), []).info
              as EndMatchHeadingInfo;

          test("it should have the correct score", () {
            expect(detailHeadingInfo.score, "$homeScore - $awayScore");
          });

          test("it should have the correct knock out end label", () {
            expect(detailHeadingInfo.knockoutEnd, knockOutEnd);
          });

          test("it should have the correct status label", () {
            expect(detailHeadingInfo.statusLabel, statusLabel);
          });
        });
      });

      group("is of SUSPENDED type", () {
        var headingInfo = Mapper.mapMatchDetailToGameDetailHeading(
            buildMatchDetail(homeTeam, awayTeam, status: MatchStatus.SUSPENDED), []).info as SuspendedHeadingInfo;
        test("has correct status label", () {
          expect(headingInfo.statusLabel, statusLabel);
        });

        test("has correct score", () {
          expect(headingInfo.score, "($homeScore - $awayScore)");
        });
      });

      group("is of SUSPENDED_INDEFINITELY type", () {
        var headingInfo = Mapper.mapMatchDetailToGameDetailHeading(
                buildMatchDetail(homeTeam, awayTeam, status: MatchStatus.SUSPENDED_INDEFINITELY), []).info
            as SuspendedIndefinitelyHeadingInfo;
        test("has correct status label", () {
          expect(headingInfo.statusLabel, statusLabel);
        });

        test("has correct score", () {
          expect(headingInfo.score, "($homeScore - $awayScore)");
        });
      });

      group("is of NOT_STARTED type", () {
        var headingInfo = Mapper.mapMatchDetailToGameDetailHeading(
            buildMatchDetail(homeTeam, awayTeam, status: MatchStatus.NOT_STARTED), []).info as NotStartedHeadingInfo;
        test("has correct statusDay", () {
          expect(headingInfo.statusDay, statusDay);
        });
        test("has correct status label", () {
          expect(headingInfo.statusLabel, statusLabel);
        });
      });

      group("is of AFTER_TODAY type", () {
        var headingInfo = Mapper.mapMatchDetailToGameDetailHeading(
            buildMatchDetail(homeTeam, awayTeam, status: MatchStatus.AFTER_TODAY), []).info as AfterTodayHeadingInfo;
        test("has correct status day", () {
          expect(headingInfo.statusDay, statusDay);
        });

        test("has correct status date", () {
          expect(headingInfo.statusDate, statusDate);
        });

        test("has correct status label", () {
          expect(headingInfo.statusLabel, statusName);
        });
      });

      group("is of CANCELLED type", () {
        var headingInfo = Mapper.mapMatchDetailToGameDetailHeading(
            buildMatchDetail(homeTeam, awayTeam, status: MatchStatus.CANCELLED), []).info as CancelledHeadingInfo;

        test("has correct status label", () {
          expect(headingInfo.statusLabel, statusLabel);
        });
      });

      group("is of LIVE type", () {
        var headingInfo =
            Mapper.mapMatchDetailToGameDetailHeading(buildMatchDetail(homeTeam, awayTeam, status: MatchStatus.LIVE), [])
                .info as LiveMatchHeadingInfo;

        test("has correct score", () {
          expect(headingInfo.score, "$homeScore - $awayScore");
        });

        test("has correct status label", () {
          expect(headingInfo.statusLabel, statusLabel);
        });
      });

      group("is of POSTPONED type", () {
        var headingInfo = Mapper.mapMatchDetailToGameDetailHeading(
            buildMatchDetail(homeTeam, awayTeam, status: MatchStatus.POSTPONED), []).info as PostponedHeadingInfo;

        test("has correct status label", () {
          expect(headingInfo.statusLabel, statusLabel);
        });
      });
    });
  });

  group("Event", () {
    test("should ignore unknown event types", () {
      var eventList = Mapper.mapMatchDetailToListOfEvents(
          buildMatchDetail(homeTeam, awayTeam, matchEvents: [buildMatchEvent(eventType: "chakka makka")]));
      expect(eventList.length, 0);
    });

    test("an empty event list should result in an empty list", () {
      var eventList = Mapper.mapMatchDetailToListOfEvents(buildMatchDetail(homeTeam, awayTeam));
      expect(eventList.length, 0);
    });

    group("Default Event", () {
      var basicEvents = Mapper.mapMatchDetailToListOfEvents(buildMatchDetail(homeTeam, awayTeam, matchEvents: [
        buildMatchEvent(eventType: "GOAL", person: buildPerson()),
        buildMatchEvent(eventType: "OWN_GOAL", person: buildPerson()),
        buildMatchEvent(eventType: "PENALTY_GOAL", person: buildPerson()),
        buildMatchEvent(eventType: "PENALTY_MISSED", person: buildPerson()),
        buildMatchEvent(eventType: "CORNER_GOAL", person: buildPerson()),
        buildMatchEvent(eventType: "FREE_KICK_GOAL", person: buildPerson()),
        buildMatchEvent(eventType: "SHOOTOUT_SCORED", person: buildPerson()),
        buildMatchEvent(eventType: "SHOOTOUT_MISSED", person: buildPerson()),
        buildMatchEvent(eventType: "YELLOW_CARD", person: buildPerson()),
        buildMatchEvent(eventType: "SECOND_YELLOW_CARD", person: buildPerson()),
        buildMatchEvent(eventType: "RED_CARD", person: buildPerson()),
        buildMatchEvent(
          eventType: "SUBSTITUTION",
          person: buildPerson(firstName: null),
          eventOwningTeam: network.EventOwningTeam.AWAY,
        ),
      ]));

      test("basic event types should map to default events", () {
        expect(basicEvents.length, 12);
        basicEvents.forEach((event) => expect(event, const TypeMatcher<DefaultEvent>()));
      });

      var iconTypes = [
        EventIconType.GOAL,
        EventIconType.OWN_GOAL,
        EventIconType.PENALTY_GOAL,
        EventIconType.PENALTY_MISSED,
        EventIconType.CORNER_GOAL,
        EventIconType.FREE_KICK_GOAL,
        EventIconType.SHOOTOUT_SCORED,
        EventIconType.SHOOTOUT_MISSED,
        EventIconType.YELLOW_CARD,
        EventIconType.SECOND_YELLOW_CARD,
        EventIconType.RED_CARD,
        EventIconType.SUBSTITUTION
      ];

      basicEvents.asMap().forEach((i, event) {
        test("has correct icon type", () {
          expect((event as DefaultEvent).icon, iconTypes[i]);
        });
      });

      group("first event (GOAL)", () {
        final DefaultEvent event = basicEvents.first;

        test("has the correct score", () {
          expect(event.score, "$homeScore - $awayScore");
        });

        test("has the correct time stamp", () {
          expect(event.timeStamp, "$timeStamp'");
        });

        test("has the correct name", () {
          expect(event.personName, "$firstName $lastName");
        });

        test("is for home team", () {
          expect(event.isHomeTeam, true);
        });
      });

      group("last event (SUBSTITION)", () {
        final DefaultEvent event = basicEvents.last;

        test("has the correct score", () {
          expect(event.score, "$homeScore - $awayScore");
        });

        test("has the correct time stamp", () {
          expect(event.timeStamp, "$timeStamp'");
        });

        test("has the correct name", () {
          expect(event.personName, "$shortName");
        });

        test("is for home team", () {
          expect(event.isHomeTeam, false);
        });
      });
    });

    group("Comment Events", () {
      var commentEvents = Mapper.mapMatchDetailToListOfEvents(buildMatchDetail(homeTeam, awayTeam, matchEvents: [
        buildMatchEvent(eventType: "COMMENT"),
        buildMatchEvent(eventType: "COMMENT_GOAL", title: null),
      ]));
      final CommentEvent firstCommentEvent = commentEvents.first;
      final CommentEvent lastCommentEvent = commentEvents.last;

      test("should be the correct size", () {
        expect(commentEvents.length, 2);
      });

      test("should have the correct title", () {
        expect(firstCommentEvent.title, title);
        expect(lastCommentEvent.title, null);
      });

      test("should have the correct text", () {
        expect(firstCommentEvent.text, text);
        expect(lastCommentEvent.text, text);
      });

      test("should have the correct time stamp", () {
        expect(firstCommentEvent.timeStamp, "$timeStamp'");
        expect(lastCommentEvent.timeStamp, "$timeStamp'");
      });
    });

    group("Comment Quote Event", () {
      var commentEvents = Mapper.mapMatchDetailToListOfEvents(buildMatchDetail(homeTeam, awayTeam, matchEvents: [
        buildMatchEvent(eventType: "COMMENT_QUOTE", person: buildPerson()),
      ]));
      final CommentQuoteEvent commentQuoteEvent = commentEvents.first;

      test("should have the correct time stamp", () {
        expect(commentQuoteEvent.timeStamp, "$timeStamp'");
      });

      test("should have the correct author", () {
        expect(commentQuoteEvent.author, "$firstName $lastName");
      });

      test("should have the correct quote", () {
        expect(commentQuoteEvent.quote, text);
      });
    });

    group("Phase Event", () {
      var phaseEvent = Mapper.mapMatchDetailToListOfEvents(buildMatchDetail(homeTeam, awayTeam, matchEvents: [
        buildMatchEvent(eventType: "PHASE", title: "RUST"),
      ]))[0] as PhaseEvent;

      test("should have the correct name", () {
        expect(phaseEvent.name, "RUST");
      });
    });

    group("Banner Event", () {
      //TODO
    });

    group("Video Event", () {
      var videoEvents = Mapper.mapMatchDetailToListOfEvents(buildMatchDetail(homeTeam, awayTeam, matchEvents: [
        buildMatchEvent(
          eventType: "VIDEO",
          media: buildMedia(
            id: "videoId",
          ),
        ),
        buildMatchEvent(
          eventType: "VIDEO",
          title: null,
          media: buildMedia(id: "videoId", thumbnailUrl: null),
        )
      ]));

      group("first video event", () {
        var videoEvent = videoEvents.elementAt(0) as VideoEvent;
        test("should have the correct video id", () {
          expect(videoEvent.videoId, "videoId");
        });

        test("should have the correct title", () {
          expect(videoEvent.title, title);
        });

        test("should have the correct media type", () {
          expect(videoEvent.mediaType, mediaType);
        });

        test("should have the correct thumbnail url", () {
          expect(videoEvent.imageUrl, thumbnailUrl);
        });
      });

      group("second video event", () {
        var videoEvent = videoEvents.elementAt(1) as VideoEvent;
        test("should have the correct video id", () {
          expect(videoEvent.videoId, "videoId");
        });

        test("should have the correct title", () {
          expect(videoEvent.title, null);
        });

        test("should have the correct media type", () {
          expect(videoEvent.mediaType, mediaType);
        });

        test("should have the correct thumbnail url", () {
          expect(videoEvent.imageUrl, null);
        });
      });
    });

    group("Live Video Event", () {
      var liveVideoEvent = Mapper.mapMatchDetailToListOfEvents(buildMatchDetail(homeTeam, awayTeam, matchEvents: [
        buildMatchEvent(
            eventType: "LIVESTREAM",
            media: buildMedia(
              id: "videoId",
              mediaType: MediaType.VRT,
            ))
      ]))[0] as LiveStreamEvent;

      test("should have the correct live stream id", () {
        expect(liveVideoEvent.liveStreamId, "videoId");
      });

      test("should have the correct title", () {
        expect(liveVideoEvent.title, title);
      });

      test("should have the correct media type", () {
        expect(liveVideoEvent.mediaType, mediaType);
      });

      test("should have the correct ad content", () {
        expect(liveVideoEvent.adContent, adContent);
      });

      test("should have the correct ad location", () {
        expect(liveVideoEvent.adLocation, adLocation);
      });

      test("should have the correct ad category", () {
        expect(liveVideoEvent.adCategory, adCategory);
      });

      test("should have the correct ad consent", () {
        expect(liveVideoEvent.adConsent, adConsent);
      });
    });

    group("Info Event", () {
      var infoEvent = Mapper.mapMatchDetailToListOfEvents(
          buildMatchDetail(homeTeam, awayTeam, matchEvents: [buildMatchEvent(eventType: "INFO")]))[0] as InfoEvent;

      test("should have the correct text", () {
        expect(infoEvent.info, text);
      });
    });
  });

  group("Menu Drawer", () {
    var drawerMenu = Mapper.mapMenuToDrawerMenu(buildMenu(
      favs: [
        buildCompetition(id: "1"),
        buildCompetition(id: "2"),
        buildCompetition(id: "3"),
      ],
      nonFavs: [
        buildCompetition(id: "4"),
        buildCompetition(id: "5"),
      ],
    ));

    group("favourites", () {
      var competitions = drawerMenu.favouriteCompetitions;

      test("has the correct size", () {
        expect(competitions.length, 3);
      });

      group("first favourite", () {
        var firstFavComp = competitions.first;

        test("has the correct id", () {
          expect(firstFavComp.id, "1");
        });

        test("has the correct abbreviation", () {
          expect(firstFavComp.abbreviation, countryShort);
        });

        test("has the correct name", () {
          expect(firstFavComp.name, label);
        });

        test("has the correct accessibility text", () {
          expect(firstFavComp.accessibility, accessibilityText);
        });
      });
    });

    group("non favourites", () {
      var competitions = drawerMenu.nonFavouriteCompetitions;

      test("has the correct size", () {
        expect(competitions.length, 2);
      });
    });
  });
}

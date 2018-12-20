import 'package:built_collection/src/list.dart';
import 'package:spv/models/model_mapper.dart';
import 'package:spv/models/view/view_models.dart';
import 'package:spv/models/network/network_models.dart' as network;
import 'package:test/test.dart';

import '../utils/model_builder.dart';

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
    var videoViewModel =
        Mapper.mapVideoToViewModel(buildVideoItem(contentLinks: [
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
                    awayTeam)
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
            var firstMatchDay = matchDays.elementAt(0);

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

          group("first match day", () {
            var firstMatchDay = matchDays.first;

            test("isCurrent", () {
              expect(firstMatchDay.isCurrent, true);
            });
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
}

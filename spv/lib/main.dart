import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rxdart/rxdart.dart';
import 'package:spv/model/view/calendar.dart';
import 'package:spv/model/view/event.dart';
import 'package:spv/service/bloc/bloc.dart';
import 'package:spv/service/datasource/cache/cache.dart';
import 'package:spv/service/datasource/network/network.dart';
import 'package:spv/service/datasource/user/user_preferences.dart';
import 'package:spv/service/models/response.dart';
import 'package:spv/model/view/match.dart';
import 'package:spv/ui/screen/calendar/match_day_and_ranking_overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  HomeBloc _homeBloc;
  GameDetailBloc _gameDetailBloc;
  UserPreference _userPreferences;
  CompetitionOverviewBloc _competitionOverviewBloc;
  Cache _cache;
  NetworkImpl _network;

  @override
  Widget build(BuildContext context) {
    var httpClient = http.Client();
    _cache = CacheImpl();
    _network = NetworkImpl(httpClient);

    _homeBloc = HomeBloc(_cache, _network);

    _userPreferences = UserPreferenceImpl();
    _userPreferences.setFavoriteTeams(["300"]);

    _gameDetailBloc = GameDetailBloc(
      "2277288",
      _cache,
      _network,
      _userPreferences,
      notLiveRefreshInMilliSeconds: 1000,
    );

    _competitionOverviewBloc = CompetitionOverviewBloc("48", _cache, _network, _userPreferences);

    return MaterialApp(
      title: 'Sporza Voetbal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MatchDayAndRankingOverviewScreen(_competitionOverviewBloc),
    );
  }

  void _fire() {
    _competitionOverviewBloc.calendar.listen((data) {
      (data as Data<Calendar>)
          .value
          .phases
          .expand((phase) => phase.matchDays)
          .expand((matchDay) => matchDay.matches)
          .map((match) => (match as Match).id)
          .map((matchId) =>
              [matchId, GameDetailBloc(matchId, _cache, _network, _userPreferences, notLiveRefreshInMilliSeconds: 1000).events])
          .forEach((pair) {
        (pair.last as Observable<Response<List<Event>>>).listen((eventResp) {
          if (eventResp is Fail<List<Event>>) {
            print("Fail: ${pair.first}: ${eventResp.throwable}");
          }
        }, onError: (err) {
          print("Unhandled Error: ${pair.first} $err");
        });
      });
    });

    _competitionOverviewBloc.ranking.listen((data) {
      print(data);
    });

    _gameDetailBloc.headingInfo.listen((resp) {
      print(resp);
    });

    _gameDetailBloc.events.listen((resp) {
      print(resp);
    });

    _homeBloc.news.listen((resp) {
      print(resp);
    });

    _homeBloc.videos.listen((resp) {
      print(resp);
    });
  }
}

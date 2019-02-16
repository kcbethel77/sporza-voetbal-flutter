import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rxdart/rxdart.dart';
import 'package:service_layer_spv/spv_service.dart';
import 'package:common_spv/common.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Sporza Voetbal'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  HomeBloc _homeBloc;
  GameDetailBloc _gameDetailBloc;
  UserPreference _userPreferences;
  CompetitionOverviewBloc _competitionOverviewBloc;
  Cache _cache;
  NetworkImpl _network;

  @override
  void initState() {
    super.initState();
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

    _competitionOverviewBloc =
        CompetitionOverviewBloc("52", _cache, _network, _userPreferences);
  }

  void _fire() {
    _competitionOverviewBloc.calendar.listen((data) {
      (data as Data<Calendar>)
          .value
          .phases
          .expand((phase) => phase.matchDays)
          .expand((matchDay) => matchDay.matches)
          .map((match) => (match as Match).id)
          .map((matchId) => [
                matchId,
                GameDetailBloc(matchId, _cache, _network, _userPreferences,
                        notLiveRefreshInMilliSeconds: 1000)
                    .events
              ])
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

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.green,);
  }
}

import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:spv/datasource/cache/cache.dart';
import 'package:spv/datasource/network/network.dart';
import 'package:spv/datasource/user/user_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:spv/models/response.dart';
import 'package:spv/models/view/view_models.dart' as view;
import 'package:spv/usecase/usecase.dart';
import 'package:spv/bloc//bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  @override
  void initState() {
    super.initState();
  }

  void _incrementCounter() {
    var httpClient = http.Client();
    var cache = CacheImpl();
    var network = NetworkImpl(httpClient);

    final NewsUseCase newsUseCase = NewsUseCase(cache, network);
    final VideoUseCase videoUseCase = VideoUseCase(cache, network);

    final HomeBloc homeBloc = HomeBloc(newsUseCase, videoUseCase);

    final UserPreference userPreferences = UserPreferenceImpl();
    userPreferences.setFavoriteTeams(["300"]);

    final GameDetailBloc gameDetailBloc = GameDetailBloc(
      "2277288",
      cache,
      network,
      userPreferences,
      notLiveRefreshInMilliSeconds: 1000,
    );

    final CompetitionOverviewBloc competitionOverviewBloc =
        CompetitionOverviewBloc("52", cache, network, userPreferences);

    competitionOverviewBloc.calendar.listen((data) {
      (data as Data<view.Calendar>)
          .value
          .phases
          .expand((phase) => phase.matchDays)
          .expand((matchDay) => matchDay.matches)
          .map((match) => (match as view.Match).id)
          .map((matchId) => [
                matchId,
                GameDetailBloc(matchId, cache, network, userPreferences, notLiveRefreshInMilliSeconds: 1000).events
              ])
          .forEach((pair) {
        (pair.last as Observable<Response<List<view.Event>>>).listen((eventResp) {
          if (eventResp is Fail<List<view.Event>>) {
            print("Fail: ${pair.first}: ${eventResp.throwable}");
          }
        }, onError: (err) {
          print("Unhandled Error: ${pair.first} $err");
        });
      });
    });

//    competitionOverviewBloc.ranking.listen((data) {
//      print(data);
//    });
//
//    gameDetailBloc.headingInfo.listen((resp) {
//      print(resp);
//    });
//
//    gameDetailBloc.events.listen((resp) {
//      print(resp);
//    });
//
//    homeBloc.news.listen((resp) {
//      print(resp);
//    });
//
//    homeBloc.videos.listen((resp) {
//      print(resp);
//    });

    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

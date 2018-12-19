import 'package:flutter/material.dart';
import 'package:spv/bloc/competition_overview_bloc.dart';
import 'package:spv/bloc/home_bloc.dart';
import 'package:spv/datasource/cache/cache.dart';
import 'package:spv/datasource/network/network.dart';
import 'package:spv/models/response.dart';
import 'package:http/http.dart' as http;
import 'package:spv/usecase/use_case.dart';

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
    var httpClient = http.Client();
    var cache = CacheImpl();
    var network = NetworkImpl(httpClient);

    final NewsUseCase newsUseCase = NewsUseCase(cache, network);
    final VideoUseCase videoUseCase = VideoUseCase(cache, network);

    final HomeBloc newsBloc = HomeBloc(newsUseCase, videoUseCase);

    final CompetitionOverviewBloc competitionOverviewBloc =
        CompetitionOverviewBloc("59", cache, network);

    competitionOverviewBloc.calendar.listen((data) {
      print(data);
    });

    newsBloc.news.listen((data) {
      //print(data);
    });

    newsBloc.videos.listen((data) {
      //print(data);
    });

//    videoUseCase.video.listen((data) {
//      if (data is Data) {
//        print("is Data");
//        print((data as Data).value);
//      }
//
//      if (data is Fail) {
//        print("is Fail");
//        print((data as Fail).throwable);
//      }
//    });
//
//    newsUseCase.news.listen((data) {
//      if (data is Data) {
//        print("is Data");
//        print((data as Data).value);
//      }
//
//      if (data is Fail) {
//        print("is Fail");
//        print((data as Fail).throwable);
//      }
//    });
  }

  void _incrementCounter() {
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

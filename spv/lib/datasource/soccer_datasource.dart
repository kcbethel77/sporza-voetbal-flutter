import 'package:rxdart/rxdart.dart';
import 'package:spv/models/network/news.dart';

abstract class SporzaSoccerDataSource {
  Observable<List<News>> get news;
}
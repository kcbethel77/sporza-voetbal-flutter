import 'package:rxdart/rxdart.dart';
import 'package:spv/datasource/cache/cache.dart';
import 'package:spv/datasource/network/network.dart';
import 'package:spv/models/network/news.dart';

class NewsUseCase {

  final Cache cache;
  final Network network;

  NewsUseCase(this.cache, this.network);

  Observable<List<News>> get news => network.news;
}
import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart';
import 'package:rxdart/rxdart.dart';
import 'package:spv/datasource/soccer_datasource.dart';
import 'package:spv/models/network/news.dart';
import 'package:spv/models/network/serializers.dart';
import 'package:path_provider/path_provider.dart';

abstract class Cache extends SporzaSoccerDataSource {
  Future<bool> saveNewsItems(List<News> newsItems);
}

class CacheImpl implements Cache {
  final String newsFolder = "news";
  final String newsFile = "news.json";
  String documentsDir;
  final String path;

  CacheImpl({final this.path}) {
    _initDocumentsFolder();
  }

  void _initDocumentsFolder() async {
    documentsDir = Platform.isAndroid || Platform.isIOS ? (await getApplicationDocumentsDirectory()).path : path;
  }

  Future<File> _getNewsFolder() async {
    final File newsDir = File(join(documentsDir, newsFolder, newsFile));
    await newsDir.create(recursive: true);
    return newsDir;
  }

  @override
  Future<bool> saveNewsItems(List<News> newsItems) async {
    final File newsFile = await _getNewsFolder();
    final String newsString = newsItems.map((news) => json.encode(serializers.serialize(news))).toList().toString();
    final File newsJsonFile = await newsFile.writeAsString(newsString);
    return await newsJsonFile.exists();
  }

  @override
  Observable<List<News>> news() => Observable.fromFuture(_news());

  Future<List<News>> _news() async {
    List<News> newsList = List();
    final File newsFile = await _getNewsFolder();

    if (await newsFile.exists()) {
      final String newsJson = await newsFile.readAsString();
      newsList = List.from(json.decode(newsJson)).map((item) => serializers.deserialize(item) as News).toList();
    }

    return newsList;
  }
}

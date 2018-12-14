import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart';
import 'package:rxdart/rxdart.dart';
import 'package:spv/datasource/soccer_datasource.dart';
import 'package:spv/models/network/news.dart';
import 'package:spv/models/network/serializers.dart';
import 'package:path_provider/path_provider.dart';

abstract class Cache extends SporzaSoccerDataSource {
  void saveNewsItems(List<News> newsItems);
}

class CacheImpl implements Cache {

  final String newsFolder = "news";
  final String newsFile = "news.json";
  String documentsDir;

  CacheImpl() {
    //_initDocumentsFolder();
  }

//  void _initDocumentsFolder() async {
//    documentsDir = (await getApplicationDocumentsDirectory()).path;
//  }
//
//  Future<File> _getNewsFolder() async {
//    File newsDir = File(join(documentsDir, newsFolder));
//    await newsDir.create(recursive: true);
//    return newsDir;
//  }
//
  @override
  void saveNewsItems(List<News> newsItems) async {
    //File newsFile = await _getNewsFolder();
    //String newsString = newsItems.map((news) => json.encode(serializers.serialize(news))).toList().toString();
    //newsFile.writeAsString(newsString);
  }

  @override
  Observable<List<News>> news() {
    return Observable.never();
  }
}

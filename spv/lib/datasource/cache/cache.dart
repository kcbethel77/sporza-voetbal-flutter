import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:spv/models/network/link.dart';
import 'package:spv/models/network/news.dart';
import 'package:spv/models/network/serializers.dart';

abstract class Cache {
  void saveNewsItems(List<News> newsItems);
}

class CacheImpl implements Cache {

  const CacheImpl();

  @override
  void saveNewsItems(List<News> newsItems) async {
    String newsString = newsItems.map((news) => json.encode(serializers.serialize(news))).toList().toString();
    print(newsString);
    var b = json.decode(newsString).map((e) => serializers.deserialize(e));
    print(b);
  }
}

void main() {
  var db = CacheImpl();
  //var link
  News newsItem = (NewsBuilder()
        ..id = "id"
        ..accessibilityText = "acc"
        ..date = "date"
        ..description = "description"
        ..title = "title"
        ..contentLinks = ListBuilder([
          (LinkBuilder()
                ..id = "link-id"
                ..rel = "link-rel"
                ..url = "link-url")
              .build()
        ])
        ..imageLinks = ListBuilder([
          (LinkBuilder()
                ..id = "link-id"
                ..rel = "link-rel"
                ..url = "link-url")
              .build()
        ]))
      .build();

  db.saveNewsItems([newsItem]);
}

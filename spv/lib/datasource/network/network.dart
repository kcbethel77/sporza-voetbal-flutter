import 'dart:async';
import 'dart:convert';

import 'package:rxdart/rxdart.dart';
import 'package:spv/models/network/news.dart';
import 'package:spv/models/network/serializers.dart';

import 'package:http/http.dart' as http;

abstract class Network {
  Observable<List<News>> news();
}

class NetworkImpl implements Network {
  static String baseUrl = "https://csinfostrada.vrt.be";
  static int _version = 7;
  static Map<String, String> _headers = {
    "Accept": "application/be.vrt.infostrada.v$_version+json",
    "X-Device-Id": "android"
  };

  final http.Client client;

  const NetworkImpl(this.client);

  @override
  Observable<List<News>> news() => Observable.fromFuture(_news());

  Future<List<News>> _news() async {
    final response = await client.get(
      Uri.parse("$baseUrl/footbal/news"),
      headers: _headers,
    );
    return List.from(json.decode(response.body))
        .map((item) => serializers.deserializeWith(News.serializer, item))
        .toList();
  }
}

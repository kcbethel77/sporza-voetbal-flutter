import 'dart:async';
import 'dart:convert';

import 'package:rxdart/rxdart.dart';
import 'package:spv/models/network/news.dart';
import 'package:spv/models/response.dart';
import 'package:spv/models/network/serializers.dart';

import 'package:http/http.dart' as http;

abstract class Network {
  Future<Response<List<News>>> news();
}

class NetworkImpl implements Network {
  static String baseUrl = "https://csinfostrada.vrt.be";
  static int _version = 7;
  static Map<String, String> _headers = {
    "Accept": "application/be.vrt.infostrada.v$_version+json",
    "X-Device-Id": "android"
  };

  const NetworkImpl();

  Observable<Response<List<News>>> newsStream() {
    return Observable.fromFuture(news());
  }

  @override
  Future<Response<List<News>>> news() async {
    final response = await http.get(
      Uri.parse("$baseUrl/footbal/news"),
      headers: _headers,
    );
    return Response.success(
      List.from(json.decode(response.body))
          .map((item) => serializers.deserializeWith(News.serializer, item))
          .toList(),
    );
  }
}

void main() async {
  const network = const NetworkImpl();
  network.newsStream().listen((Response event) {
    print((event as Data).value);
  }, onError: (err) {
    print("$err error");
  });
}

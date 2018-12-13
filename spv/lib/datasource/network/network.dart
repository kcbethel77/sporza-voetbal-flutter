import 'dart:async';
import 'dart:convert';

import 'package:spv/models/network/news.dart';
import 'package:spv/models/network/serializers.dart';

import 'package:http/http.dart' as http;

const String baseUrl = "https://csinfostrada.vrt.be";

abstract class Network {
  Future<List<News>> news();
}

class NetworkImpl implements Network {
  const NetworkImpl();

  @override
  Future<List<News>> news() async {
    final response = await http.get(
      Uri.parse("$baseUrl/football/news"),
      headers: {
        "Accept": "application/be.vrt.infostrada.v7+json",
        "X-Device-Id": "android"
      },
    );
    return List.from(json.decode(response.body))
        .map((item) => serializers.deserializeWith(News.serializer, item))
        .toList();
  }
}

void main() async {
  const network = const NetworkImpl();
  var b = await network.news();
  print(b);
}

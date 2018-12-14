import 'dart:async';
import 'dart:convert';

import 'package:built_value/serializer.dart';
import 'package:rxdart/rxdart.dart';
import 'package:spv/datasource/fetch_type.dart';
import 'package:spv/datasource/soccer_datasource.dart';
import 'package:spv/models/network/serializers.dart';

import 'package:http/http.dart' as http;

abstract class Network extends SporzaSoccerDataSource {}

class NetworkImpl implements Network {
  final String baseUrl;

  final http.Client client;

  const NetworkImpl(this.client, {this.baseUrl = "https://csinfostrada.vrt.be/"});

  Future<List<T>> fetchT<T>(final Uri url, final Map<String, String> headers, final Serializer serializer) async {
    final response = await client.get(url, headers: headers);
    return List.from(json.decode(response.body))
        .map((item) => serializers.deserializeWith(serializer, item) as T)
        .toList();
  }

  @override
  Observable<List<T>> getT<T>(final DatasourceType dataSourceType) => Observable.fromFuture(
      fetchT(Uri.parse("$baseUrl${dataSourceType.uri}"), dataSourceType.headers, dataSourceType.serializer));
}

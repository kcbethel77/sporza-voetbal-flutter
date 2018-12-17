import 'dart:async';
import 'dart:convert';

import 'package:built_value/serializer.dart';
import 'package:rxdart/rxdart.dart';
import 'package:spv/datasource/data_source_type.dart';
import 'package:spv/datasource/soccer_datasource.dart';
import 'package:spv/datasource/soccer_datasource.dart';
import 'package:spv/models/network/serializers.dart';

import 'package:http/http.dart' as http;

abstract class Network extends SporzaSoccerDataSource {}

class NetworkImpl implements Network {
  final String baseUrl;

  final http.Client client;

  const NetworkImpl(this.client,
      {this.baseUrl = "https://csinfostrada.vrt.be/"});

  Future<T> _fetchRawResponse<T>(Uri url, Map<String, String> headers) async =>
      json.decode((await client.get(url, headers: headers)).body);

  T _deserialize<T>(Serializer serializer, item) =>
      serializers.deserializeWith(serializer, item) as T;

  Future<List<T>> _fetchListOfT<T>(
          final Uri url,
          final Map<String, String> headers,
          final Serializer serializer) async =>
      List.from(await _fetchRawResponse<Iterable<dynamic>>(url, headers))
          .map((item) => _deserialize<T>(serializer, item))
          .toList();

  Future<T> fetchT<T>(final Uri url, final Map<String, String> headers,
          final Serializer serializer) async =>
      _deserialize<T>(serializer, await _fetchRawResponse(url, headers));

  Uri _getUriFromDataSourceType(DatasourceType dataSourceType) =>
      Uri.parse("$baseUrl${dataSourceType.uri}");

  @override
  Observable<List<T>> getListOfT<T>(final DatasourceType dataSourceType) =>
      Observable.fromFuture(
        _fetchListOfT(
          _getUriFromDataSourceType(dataSourceType),
          dataSourceType.headers,
          dataSourceType.serializer,
        ),
      );

  @override
  Observable<T> getT<T>(DatasourceType datasourceType) => Observable.fromFuture(
        fetchT(
          _getUriFromDataSourceType(datasourceType),
          datasourceType.headers,
          datasourceType.serializer,
        ),
      );
}

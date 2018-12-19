import 'dart:async';
import 'dart:convert';

import 'package:built_value/serializer.dart';
import 'package:rxdart/rxdart.dart';
import 'package:spv/datasource/data_source_type.dart';
import 'package:spv/datasource/soccer_datasource.dart';
import 'package:spv/models/network/serializers.dart';

import 'package:http/http.dart' as http;

abstract class Network extends SporzaSoccerDataSource {}

class NetworkImpl implements Network {
  final String baseUrl;

  final http.Client client;

  const NetworkImpl(this.client, {this.baseUrl = "https://csinfostrada.vrt.be/"});

  Future<T> _fetchRawResponse<T>(final Uri url, final Map<String, String> headers) async =>
      json.decode((await client.get(url, headers: headers)).body);

  Future<List<T>> _deserializeListOfT<T>(final futureValue, final Serializer serializer) async =>
      List.from(await futureValue).map((item) => serializers.deserializeWith(serializer, item) as T).toList();

  Uri _getUriFromDataSourceType(final DatasourceType dataSourceType) => Uri.parse("$baseUrl${dataSourceType.uri}");

  @override
  Observable<List<T>> getListOfT<T>(final DatasourceType datasourceType) => Observable.fromFuture(
        _deserializeListOfT(
          _fetchRawResponse(_getUriFromDataSourceType(datasourceType), datasourceType.headers),
          datasourceType.serializer,
        ),
      );

  @override
  Observable<T> getT<T>(final DatasourceType datasourceType) =>
      Observable.fromFuture(_fetchRawResponse(_getUriFromDataSourceType(datasourceType), datasourceType.headers)
          .then((t) async => (await _deserializeListOfT([t], datasourceType.serializer)).first as T));
}

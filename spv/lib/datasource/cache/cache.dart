import 'dart:convert';
import 'dart:io';

import 'package:built_value/serializer.dart';
import 'package:rxdart/rxdart.dart';
import 'package:spv/datasource/data_source_type.dart';
import 'package:spv/datasource/soccer_datasource.dart';
import 'package:spv/models/network/serializers.dart';
import 'package:spv/datasource/file_handling.dart';

abstract class Cache extends SporzaSoccerDataSource {
  Future<bool> saveItems<T>(
      final DatasourceType dataSourceType, final List<T> items);

  Future<bool> saveItem<T>(final DatasourceType dataSourceType, final T item);
}

class CacheImpl with FileHandling implements Cache {
  final String path;

  CacheImpl({this.path});

  @override
  String get testPath => path;

  @override
  Future<bool> saveItems<T>(
      final DatasourceType dataSourceType, final List<T> items) async {
    final File file = await getFolder(dataSourceType.path, dataSourceType.file);
    final String stringifiedVersion = items
        .map((item) => json
            .encode(serializers.serializeWith(dataSourceType.serializer, item)))
        .toList()
        .toString();
    final File writtenFile = await file.writeAsString(stringifiedVersion);
    return await writtenFile.exists();
  }

  Future<List<T>> _fetchT<T>(
      final String path, final String file, final Serializer serializer) async {
    List list = List<T>();
    final File jsonFile = await getFolder(path, file);

    if (await jsonFile.exists()) {
      final String jsonStr = await jsonFile.readAsString();
      if (jsonStr.isNotEmpty) {
        list = List.from(json.decode(jsonStr))
            .map((item) => serializers.deserializeWith(serializer, item) as T)
            .toList();
      }
    }

    return list;
  }

  @override
  Observable<List<T>> getListOfT<T>(final DatasourceType fetchType) =>
      Observable.fromFuture(
          _fetchT<T>(fetchType.path, fetchType.file, fetchType.serializer));

  @override
  Observable<T> getT<T>(DatasourceType datasourceType) {
    return getListOfT(datasourceType).flatMap((value) {
      return value.isEmpty ? Observable.empty() : Observable.just(value.first);
    });
  }

  @override
  Future<bool> saveItem<T>(DatasourceType dataSourceType, T item) =>
      saveItems(dataSourceType, [item]);
}

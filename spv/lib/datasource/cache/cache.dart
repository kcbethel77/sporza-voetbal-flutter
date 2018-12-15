import 'dart:convert';
import 'dart:io';

import 'package:built_value/serializer.dart';
import 'package:path/path.dart';
import 'package:rxdart/rxdart.dart';
import 'package:spv/datasource/data_source_type.dart';
import 'package:spv/datasource/soccer_datasource.dart';
import 'package:spv/models/network/serializers.dart';
import 'package:path_provider/path_provider.dart';

abstract class Cache extends SporzaSoccerDataSource {
  Future<bool> saveItems<T>(final DatasourceType dataSourceType, final List<T> items);
}

class CacheImpl implements Cache {
  final String path;

  String _documentsDir;

  Future<String> get documentsDir async {
    if (_documentsDir == null) {
      _documentsDir = Platform.isAndroid || Platform.isIOS ? (await getApplicationDocumentsDirectory()).path : path;
    }
    return _documentsDir;
  }

  CacheImpl({this.path});

  Future<File> _getFolder(final String path, final String file) async {
    final File newsDir = File(join(await documentsDir, path, "$file.json"));
    await newsDir.create(recursive: true);
    return newsDir;
  }

  @override
  Future<bool> saveItems<T>(final DatasourceType dataSourceType, final List<T> items) async {
    final File file = await _getFolder(dataSourceType.path, dataSourceType.file);
    final String stringifiedVersion = items
        .map((item) => json.encode(serializers.serializeWith(dataSourceType.serializer, item)))
        .toList()
        .toString();
    final File writtenFile = await file.writeAsString(stringifiedVersion);
    return await writtenFile.exists();
  }

  Future<List<T>> _fetchT<T>(final String path, final String file, final Serializer serializer) async {
    List list = List();
    final File jsonFile = await _getFolder(path, file);

    if (await jsonFile.exists()) {
      final String jsonStr = await jsonFile.readAsString();
      list = List.from(json.decode(jsonStr)).map((item) => serializers.deserializeWith(serializer, item) as T).toList();
    }

    return list;
  }

  @override
  Observable<List<T>> getListOfT<T>(final DatasourceType fetchType) =>
      Observable.fromFuture(_fetchT(fetchType.path, fetchType.file, fetchType.serializer));
}

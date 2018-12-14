import 'package:built_value/serializer.dart';
import 'package:spv/models/network/news.dart';

const int _version = 7;

const Map<String, String> _defaultHeaders = {
  "Accept": "application/be.vrt.infostrada.v$_version+json",
  "X-Device-Id": "android"
};

abstract class DatasourceType<T> {
  const DatasourceType();

  String get uri => "$path/$file";

  String get path;

  String get file;

  Map<String, String> get headers => _defaultHeaders;

  Serializer<T> get serializer;
}

const newsFetchType = const NewsFetchType();

class NewsFetchType extends DatasourceType<News> {
  @override
  String get file => "news";

  @override
  String get path => "football";

  @override
  Serializer<News> get serializer => News.serializer;

  const NewsFetchType() : super();
}

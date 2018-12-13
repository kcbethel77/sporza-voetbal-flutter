import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'news.g.dart';

abstract class News implements Built<News, NewsBuilder> {
  static Serializer<News> get serializer => _$newsSerializer;

  News._();

  String get id;

  String get date;

  String get title;

  String get accessibilityText;

  @BuiltValueField(wireName: "abstractText")
  String get description;

  factory News([updates(NewsBuilder b)]) = _$News;
}

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:spv/models/view/accessibile.dart';
import 'package:spv/models/view/id.dart';

part 'news.g.dart';

abstract class News implements Built<News, NewsBuilder>, Id, Accessible {
  static Serializer<News> get serializer => _$newsSerializer;

  News._();

  String get contentUrl;

  String get title;

  String get description;

  String get imageUrl;

  String get date;

  factory News([updates(NewsBuilder b)]) = _$News;
}
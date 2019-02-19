import 'dart:io';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

import 'package:spv/model/network/network_models.dart';

part 'video.g.dart';

abstract class Video implements Built<Video, VideoBuilder> {
  static Serializer<Video> get serializer => _$videoSerializer;

  Video._();

  String get id;

  String get date;

  String get title;

  String get accessibilityText;

  BuiltList<Link> get imageLinks;

  BuiltList<Link> get contentLinks;

  BuiltList<VideoLink> get videoLinks;

  @BuiltValueField(wireName: "abstractText")
  String get description;

  factory Video([updates(VideoBuilder b)]) = _$Video;
}

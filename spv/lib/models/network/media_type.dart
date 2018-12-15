import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'media_type.g.dart';

class MediaType extends EnumClass {
  static Serializer<MediaType> get serializer => _$mediaTypeSerializer;

  static const MediaType VRT = _$VRT;
  static const MediaType M3U8 = _$M3U8;
  static const MediaType YOUTUBE = _$YOUTUBE;

  const MediaType._(String name) : super(name);

  static BuiltSet<MediaType> get values => _$values;

  static MediaType valueOf(String name) => _$valueOf(name);
}

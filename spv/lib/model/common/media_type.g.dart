// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MediaType _$VRT = const MediaType._('VRT');
const MediaType _$M3U8 = const MediaType._('M3U8');
const MediaType _$YOUTUBE = const MediaType._('YOUTUBE');

MediaType _$valueOf(String name) {
  switch (name) {
    case 'VRT':
      return _$VRT;
    case 'M3U8':
      return _$M3U8;
    case 'YOUTUBE':
      return _$YOUTUBE;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<MediaType> _$values = new BuiltSet<MediaType>(const <MediaType>[
  _$VRT,
  _$M3U8,
  _$YOUTUBE,
]);

Serializer<MediaType> _$mediaTypeSerializer = new _$MediaTypeSerializer();

class _$MediaTypeSerializer implements PrimitiveSerializer<MediaType> {
  @override
  final Iterable<Type> types = const <Type>[MediaType];
  @override
  final String wireName = 'MediaType';

  @override
  Object serialize(Serializers serializers, MediaType object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  MediaType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MediaType.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

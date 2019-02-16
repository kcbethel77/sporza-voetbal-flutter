// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_format.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BannerFormat _$IMU = const BannerFormat._('IMU');
const BannerFormat _$LEADERBOARD = const BannerFormat._('LEADERBOARD');

BannerFormat _$valueOf(String name) {
  switch (name) {
    case 'IMU':
      return _$IMU;
    case 'LEADERBOARD':
      return _$LEADERBOARD;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<BannerFormat> _$values =
    new BuiltSet<BannerFormat>(const <BannerFormat>[
  _$IMU,
  _$LEADERBOARD,
]);

Serializer<BannerFormat> _$bannerFormatSerializer =
    new _$BannerFormatSerializer();

class _$BannerFormatSerializer implements PrimitiveSerializer<BannerFormat> {
  @override
  final Iterable<Type> types = const <Type>[BannerFormat];
  @override
  final String wireName = 'BannerFormat';

  @override
  Object serialize(Serializers serializers, BannerFormat object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  BannerFormat deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      BannerFormat.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_heading_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DefaultHeadingInfo> _$defaultHeadingInfoSerializer =
    new _$DefaultHeadingInfoSerializer();

class _$DefaultHeadingInfoSerializer
    implements StructuredSerializer<DefaultHeadingInfo> {
  @override
  final Iterable<Type> types = const [DefaultHeadingInfo, _$DefaultHeadingInfo];
  @override
  final String wireName = 'DefaultHeadingInfo';

  @override
  Iterable serialize(Serializers serializers, DefaultHeadingInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  DefaultHeadingInfo deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new DefaultHeadingInfoBuilder().build();
  }
}

class _$DefaultHeadingInfo extends DefaultHeadingInfo {
  factory _$DefaultHeadingInfo([void updates(DefaultHeadingInfoBuilder b)]) =>
      (new DefaultHeadingInfoBuilder()..update(updates)).build();

  _$DefaultHeadingInfo._() : super._();

  @override
  DefaultHeadingInfo rebuild(void updates(DefaultHeadingInfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  DefaultHeadingInfoBuilder toBuilder() =>
      new DefaultHeadingInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DefaultHeadingInfo;
  }

  @override
  int get hashCode {
    return 772677630;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('DefaultHeadingInfo').toString();
  }
}

class DefaultHeadingInfoBuilder
    implements Builder<DefaultHeadingInfo, DefaultHeadingInfoBuilder> {
  _$DefaultHeadingInfo _$v;

  DefaultHeadingInfoBuilder();

  @override
  void replace(DefaultHeadingInfo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DefaultHeadingInfo;
  }

  @override
  void update(void updates(DefaultHeadingInfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$DefaultHeadingInfo build() {
    final _$result = _$v ?? new _$DefaultHeadingInfo._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

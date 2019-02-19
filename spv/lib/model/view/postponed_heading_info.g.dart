// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postponed_heading_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PostponedHeadingInfo> _$postponedHeadingInfoSerializer =
    new _$PostponedHeadingInfoSerializer();

class _$PostponedHeadingInfoSerializer
    implements StructuredSerializer<PostponedHeadingInfo> {
  @override
  final Iterable<Type> types = const [
    PostponedHeadingInfo,
    _$PostponedHeadingInfo
  ];
  @override
  final String wireName = 'PostponedHeadingInfo';

  @override
  Iterable serialize(Serializers serializers, PostponedHeadingInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'statusLabel',
      serializers.serialize(object.statusLabel,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  PostponedHeadingInfo deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostponedHeadingInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'statusLabel':
          result.statusLabel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PostponedHeadingInfo extends PostponedHeadingInfo {
  @override
  final String statusLabel;

  factory _$PostponedHeadingInfo(
          [void updates(PostponedHeadingInfoBuilder b)]) =>
      (new PostponedHeadingInfoBuilder()..update(updates)).build();

  _$PostponedHeadingInfo._({this.statusLabel}) : super._() {
    if (statusLabel == null) {
      throw new BuiltValueNullFieldError('PostponedHeadingInfo', 'statusLabel');
    }
  }

  @override
  PostponedHeadingInfo rebuild(void updates(PostponedHeadingInfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  PostponedHeadingInfoBuilder toBuilder() =>
      new PostponedHeadingInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostponedHeadingInfo && statusLabel == other.statusLabel;
  }

  @override
  int get hashCode {
    return $jf($jc(0, statusLabel.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PostponedHeadingInfo')
          ..add('statusLabel', statusLabel))
        .toString();
  }
}

class PostponedHeadingInfoBuilder
    implements Builder<PostponedHeadingInfo, PostponedHeadingInfoBuilder> {
  _$PostponedHeadingInfo _$v;

  String _statusLabel;
  String get statusLabel => _$this._statusLabel;
  set statusLabel(String statusLabel) => _$this._statusLabel = statusLabel;

  PostponedHeadingInfoBuilder();

  PostponedHeadingInfoBuilder get _$this {
    if (_$v != null) {
      _statusLabel = _$v.statusLabel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostponedHeadingInfo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PostponedHeadingInfo;
  }

  @override
  void update(void updates(PostponedHeadingInfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$PostponedHeadingInfo build() {
    final _$result =
        _$v ?? new _$PostponedHeadingInfo._(statusLabel: statusLabel);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

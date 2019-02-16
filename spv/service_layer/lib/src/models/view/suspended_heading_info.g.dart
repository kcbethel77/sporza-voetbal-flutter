// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suspended_heading_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SuspendedHeadingInfo> _$suspendedHeadingInfoSerializer =
    new _$SuspendedHeadingInfoSerializer();

class _$SuspendedHeadingInfoSerializer
    implements StructuredSerializer<SuspendedHeadingInfo> {
  @override
  final Iterable<Type> types = const [
    SuspendedHeadingInfo,
    _$SuspendedHeadingInfo
  ];
  @override
  final String wireName = 'SuspendedHeadingInfo';

  @override
  Iterable serialize(Serializers serializers, SuspendedHeadingInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'statusLabel',
      serializers.serialize(object.statusLabel,
          specifiedType: const FullType(String)),
      'score',
      serializers.serialize(object.score,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  SuspendedHeadingInfo deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SuspendedHeadingInfoBuilder();

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
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SuspendedHeadingInfo extends SuspendedHeadingInfo {
  @override
  final String statusLabel;
  @override
  final String score;

  factory _$SuspendedHeadingInfo(
          [void updates(SuspendedHeadingInfoBuilder b)]) =>
      (new SuspendedHeadingInfoBuilder()..update(updates)).build();

  _$SuspendedHeadingInfo._({this.statusLabel, this.score}) : super._() {
    if (statusLabel == null) {
      throw new BuiltValueNullFieldError('SuspendedHeadingInfo', 'statusLabel');
    }
    if (score == null) {
      throw new BuiltValueNullFieldError('SuspendedHeadingInfo', 'score');
    }
  }

  @override
  SuspendedHeadingInfo rebuild(void updates(SuspendedHeadingInfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SuspendedHeadingInfoBuilder toBuilder() =>
      new SuspendedHeadingInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SuspendedHeadingInfo &&
        statusLabel == other.statusLabel &&
        score == other.score;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, statusLabel.hashCode), score.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SuspendedHeadingInfo')
          ..add('statusLabel', statusLabel)
          ..add('score', score))
        .toString();
  }
}

class SuspendedHeadingInfoBuilder
    implements Builder<SuspendedHeadingInfo, SuspendedHeadingInfoBuilder> {
  _$SuspendedHeadingInfo _$v;

  String _statusLabel;
  String get statusLabel => _$this._statusLabel;
  set statusLabel(String statusLabel) => _$this._statusLabel = statusLabel;

  String _score;
  String get score => _$this._score;
  set score(String score) => _$this._score = score;

  SuspendedHeadingInfoBuilder();

  SuspendedHeadingInfoBuilder get _$this {
    if (_$v != null) {
      _statusLabel = _$v.statusLabel;
      _score = _$v.score;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SuspendedHeadingInfo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SuspendedHeadingInfo;
  }

  @override
  void update(void updates(SuspendedHeadingInfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SuspendedHeadingInfo build() {
    final _$result = _$v ??
        new _$SuspendedHeadingInfo._(statusLabel: statusLabel, score: score);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suspended_indefinetly_heading_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SuspendedIndefinitelyHeadingInfo>
    _$suspendedIndefinitelyHeadingInfoSerializer =
    new _$SuspendedIndefinitelyHeadingInfoSerializer();

class _$SuspendedIndefinitelyHeadingInfoSerializer
    implements StructuredSerializer<SuspendedIndefinitelyHeadingInfo> {
  @override
  final Iterable<Type> types = const [
    SuspendedIndefinitelyHeadingInfo,
    _$SuspendedIndefinitelyHeadingInfo
  ];
  @override
  final String wireName = 'SuspendedIndefinitelyHeadingInfo';

  @override
  Iterable serialize(
      Serializers serializers, SuspendedIndefinitelyHeadingInfo object,
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
  SuspendedIndefinitelyHeadingInfo deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SuspendedIndefinitelyHeadingInfoBuilder();

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

class _$SuspendedIndefinitelyHeadingInfo
    extends SuspendedIndefinitelyHeadingInfo {
  @override
  final String statusLabel;
  @override
  final String score;

  factory _$SuspendedIndefinitelyHeadingInfo(
          [void updates(SuspendedIndefinitelyHeadingInfoBuilder b)]) =>
      (new SuspendedIndefinitelyHeadingInfoBuilder()..update(updates)).build();

  _$SuspendedIndefinitelyHeadingInfo._({this.statusLabel, this.score})
      : super._() {
    if (statusLabel == null) {
      throw new BuiltValueNullFieldError(
          'SuspendedIndefinitelyHeadingInfo', 'statusLabel');
    }
    if (score == null) {
      throw new BuiltValueNullFieldError(
          'SuspendedIndefinitelyHeadingInfo', 'score');
    }
  }

  @override
  SuspendedIndefinitelyHeadingInfo rebuild(
          void updates(SuspendedIndefinitelyHeadingInfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SuspendedIndefinitelyHeadingInfoBuilder toBuilder() =>
      new SuspendedIndefinitelyHeadingInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SuspendedIndefinitelyHeadingInfo &&
        statusLabel == other.statusLabel &&
        score == other.score;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, statusLabel.hashCode), score.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SuspendedIndefinitelyHeadingInfo')
          ..add('statusLabel', statusLabel)
          ..add('score', score))
        .toString();
  }
}

class SuspendedIndefinitelyHeadingInfoBuilder
    implements
        Builder<SuspendedIndefinitelyHeadingInfo,
            SuspendedIndefinitelyHeadingInfoBuilder> {
  _$SuspendedIndefinitelyHeadingInfo _$v;

  String _statusLabel;
  String get statusLabel => _$this._statusLabel;
  set statusLabel(String statusLabel) => _$this._statusLabel = statusLabel;

  String _score;
  String get score => _$this._score;
  set score(String score) => _$this._score = score;

  SuspendedIndefinitelyHeadingInfoBuilder();

  SuspendedIndefinitelyHeadingInfoBuilder get _$this {
    if (_$v != null) {
      _statusLabel = _$v.statusLabel;
      _score = _$v.score;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SuspendedIndefinitelyHeadingInfo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SuspendedIndefinitelyHeadingInfo;
  }

  @override
  void update(void updates(SuspendedIndefinitelyHeadingInfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SuspendedIndefinitelyHeadingInfo build() {
    final _$result = _$v ??
        new _$SuspendedIndefinitelyHeadingInfo._(
            statusLabel: statusLabel, score: score);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

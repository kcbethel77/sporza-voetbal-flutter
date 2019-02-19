// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_match_heading_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LiveMatchHeadingInfo> _$liveMatchHeadingInfoSerializer =
    new _$LiveMatchHeadingInfoSerializer();

class _$LiveMatchHeadingInfoSerializer
    implements StructuredSerializer<LiveMatchHeadingInfo> {
  @override
  final Iterable<Type> types = const [
    LiveMatchHeadingInfo,
    _$LiveMatchHeadingInfo
  ];
  @override
  final String wireName = 'LiveMatchHeadingInfo';

  @override
  Iterable serialize(Serializers serializers, LiveMatchHeadingInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'score',
      serializers.serialize(object.score,
          specifiedType: const FullType(String)),
      'statusLabel',
      serializers.serialize(object.statusLabel,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  LiveMatchHeadingInfo deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LiveMatchHeadingInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'statusLabel':
          result.statusLabel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LiveMatchHeadingInfo extends LiveMatchHeadingInfo {
  @override
  final String score;
  @override
  final String statusLabel;

  factory _$LiveMatchHeadingInfo(
          [void updates(LiveMatchHeadingInfoBuilder b)]) =>
      (new LiveMatchHeadingInfoBuilder()..update(updates)).build();

  _$LiveMatchHeadingInfo._({this.score, this.statusLabel}) : super._() {
    if (score == null) {
      throw new BuiltValueNullFieldError('LiveMatchHeadingInfo', 'score');
    }
    if (statusLabel == null) {
      throw new BuiltValueNullFieldError('LiveMatchHeadingInfo', 'statusLabel');
    }
  }

  @override
  LiveMatchHeadingInfo rebuild(void updates(LiveMatchHeadingInfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  LiveMatchHeadingInfoBuilder toBuilder() =>
      new LiveMatchHeadingInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LiveMatchHeadingInfo &&
        score == other.score &&
        statusLabel == other.statusLabel;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, score.hashCode), statusLabel.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LiveMatchHeadingInfo')
          ..add('score', score)
          ..add('statusLabel', statusLabel))
        .toString();
  }
}

class LiveMatchHeadingInfoBuilder
    implements Builder<LiveMatchHeadingInfo, LiveMatchHeadingInfoBuilder> {
  _$LiveMatchHeadingInfo _$v;

  String _score;
  String get score => _$this._score;
  set score(String score) => _$this._score = score;

  String _statusLabel;
  String get statusLabel => _$this._statusLabel;
  set statusLabel(String statusLabel) => _$this._statusLabel = statusLabel;

  LiveMatchHeadingInfoBuilder();

  LiveMatchHeadingInfoBuilder get _$this {
    if (_$v != null) {
      _score = _$v.score;
      _statusLabel = _$v.statusLabel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LiveMatchHeadingInfo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LiveMatchHeadingInfo;
  }

  @override
  void update(void updates(LiveMatchHeadingInfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$LiveMatchHeadingInfo build() {
    final _$result = _$v ??
        new _$LiveMatchHeadingInfo._(score: score, statusLabel: statusLabel);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

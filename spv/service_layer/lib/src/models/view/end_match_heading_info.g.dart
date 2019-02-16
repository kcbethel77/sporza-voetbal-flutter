// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'end_match_heading_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EndMatchHeadingInfo> _$endMatchHeadingInfoSerializer =
    new _$EndMatchHeadingInfoSerializer();

class _$EndMatchHeadingInfoSerializer
    implements StructuredSerializer<EndMatchHeadingInfo> {
  @override
  final Iterable<Type> types = const [
    EndMatchHeadingInfo,
    _$EndMatchHeadingInfo
  ];
  @override
  final String wireName = 'EndMatchHeadingInfo';

  @override
  Iterable serialize(Serializers serializers, EndMatchHeadingInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'score',
      serializers.serialize(object.score,
          specifiedType: const FullType(String)),
      'statusLabel',
      serializers.serialize(object.statusLabel,
          specifiedType: const FullType(String)),
    ];
    if (object.knockoutEnd != null) {
      result
        ..add('knockoutEnd')
        ..add(serializers.serialize(object.knockoutEnd,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  EndMatchHeadingInfo deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EndMatchHeadingInfoBuilder();

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
        case 'knockoutEnd':
          result.knockoutEnd = serializers.deserialize(value,
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

class _$EndMatchHeadingInfo extends EndMatchHeadingInfo {
  @override
  final String score;
  @override
  final String knockoutEnd;
  @override
  final String statusLabel;

  factory _$EndMatchHeadingInfo([void updates(EndMatchHeadingInfoBuilder b)]) =>
      (new EndMatchHeadingInfoBuilder()..update(updates)).build();

  _$EndMatchHeadingInfo._({this.score, this.knockoutEnd, this.statusLabel})
      : super._() {
    if (score == null) {
      throw new BuiltValueNullFieldError('EndMatchHeadingInfo', 'score');
    }
    if (statusLabel == null) {
      throw new BuiltValueNullFieldError('EndMatchHeadingInfo', 'statusLabel');
    }
  }

  @override
  EndMatchHeadingInfo rebuild(void updates(EndMatchHeadingInfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  EndMatchHeadingInfoBuilder toBuilder() =>
      new EndMatchHeadingInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EndMatchHeadingInfo &&
        score == other.score &&
        knockoutEnd == other.knockoutEnd &&
        statusLabel == other.statusLabel;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, score.hashCode), knockoutEnd.hashCode),
        statusLabel.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EndMatchHeadingInfo')
          ..add('score', score)
          ..add('knockoutEnd', knockoutEnd)
          ..add('statusLabel', statusLabel))
        .toString();
  }
}

class EndMatchHeadingInfoBuilder
    implements Builder<EndMatchHeadingInfo, EndMatchHeadingInfoBuilder> {
  _$EndMatchHeadingInfo _$v;

  String _score;
  String get score => _$this._score;
  set score(String score) => _$this._score = score;

  String _knockoutEnd;
  String get knockoutEnd => _$this._knockoutEnd;
  set knockoutEnd(String knockoutEnd) => _$this._knockoutEnd = knockoutEnd;

  String _statusLabel;
  String get statusLabel => _$this._statusLabel;
  set statusLabel(String statusLabel) => _$this._statusLabel = statusLabel;

  EndMatchHeadingInfoBuilder();

  EndMatchHeadingInfoBuilder get _$this {
    if (_$v != null) {
      _score = _$v.score;
      _knockoutEnd = _$v.knockoutEnd;
      _statusLabel = _$v.statusLabel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EndMatchHeadingInfo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$EndMatchHeadingInfo;
  }

  @override
  void update(void updates(EndMatchHeadingInfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$EndMatchHeadingInfo build() {
    final _$result = _$v ??
        new _$EndMatchHeadingInfo._(
            score: score, knockoutEnd: knockoutEnd, statusLabel: statusLabel);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_detail_competition.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MatchDetailCompetition> _$matchDetailCompetitionSerializer =
    new _$MatchDetailCompetitionSerializer();

class _$MatchDetailCompetitionSerializer
    implements StructuredSerializer<MatchDetailCompetition> {
  @override
  final Iterable<Type> types = const [
    MatchDetailCompetition,
    _$MatchDetailCompetition
  ];
  @override
  final String wireName = 'MatchDetailCompetition';

  @override
  Iterable serialize(Serializers serializers, MatchDetailCompetition object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'label',
      serializers.serialize(object.label,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  MatchDetailCompetition deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MatchDetailCompetitionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$MatchDetailCompetition extends MatchDetailCompetition {
  @override
  final String label;

  factory _$MatchDetailCompetition(
          [void updates(MatchDetailCompetitionBuilder b)]) =>
      (new MatchDetailCompetitionBuilder()..update(updates)).build();

  _$MatchDetailCompetition._({this.label}) : super._() {
    if (label == null) {
      throw new BuiltValueNullFieldError('MatchDetailCompetition', 'label');
    }
  }

  @override
  MatchDetailCompetition rebuild(
          void updates(MatchDetailCompetitionBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MatchDetailCompetitionBuilder toBuilder() =>
      new MatchDetailCompetitionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MatchDetailCompetition && label == other.label;
  }

  @override
  int get hashCode {
    return $jf($jc(0, label.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MatchDetailCompetition')
          ..add('label', label))
        .toString();
  }
}

class MatchDetailCompetitionBuilder
    implements Builder<MatchDetailCompetition, MatchDetailCompetitionBuilder> {
  _$MatchDetailCompetition _$v;

  String _label;
  String get label => _$this._label;
  set label(String label) => _$this._label = label;

  MatchDetailCompetitionBuilder();

  MatchDetailCompetitionBuilder get _$this {
    if (_$v != null) {
      _label = _$v.label;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MatchDetailCompetition other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MatchDetailCompetition;
  }

  @override
  void update(void updates(MatchDetailCompetitionBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$MatchDetailCompetition build() {
    final _$result = _$v ?? new _$MatchDetailCompetition._(label: label);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

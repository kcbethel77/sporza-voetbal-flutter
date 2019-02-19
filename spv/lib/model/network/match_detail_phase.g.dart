// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_detail_phase.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MatchDetailPhase> _$matchDetailPhaseSerializer =
    new _$MatchDetailPhaseSerializer();

class _$MatchDetailPhaseSerializer
    implements StructuredSerializer<MatchDetailPhase> {
  @override
  final Iterable<Type> types = const [MatchDetailPhase, _$MatchDetailPhase];
  @override
  final String wireName = 'MatchDetailPhase';

  @override
  Iterable serialize(Serializers serializers, MatchDetailPhase object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'label',
      serializers.serialize(object.label,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  MatchDetailPhase deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MatchDetailPhaseBuilder();

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

class _$MatchDetailPhase extends MatchDetailPhase {
  @override
  final String label;

  factory _$MatchDetailPhase([void updates(MatchDetailPhaseBuilder b)]) =>
      (new MatchDetailPhaseBuilder()..update(updates)).build();

  _$MatchDetailPhase._({this.label}) : super._() {
    if (label == null) {
      throw new BuiltValueNullFieldError('MatchDetailPhase', 'label');
    }
  }

  @override
  MatchDetailPhase rebuild(void updates(MatchDetailPhaseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MatchDetailPhaseBuilder toBuilder() =>
      new MatchDetailPhaseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MatchDetailPhase && label == other.label;
  }

  @override
  int get hashCode {
    return $jf($jc(0, label.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MatchDetailPhase')
          ..add('label', label))
        .toString();
  }
}

class MatchDetailPhaseBuilder
    implements Builder<MatchDetailPhase, MatchDetailPhaseBuilder> {
  _$MatchDetailPhase _$v;

  String _label;
  String get label => _$this._label;
  set label(String label) => _$this._label = label;

  MatchDetailPhaseBuilder();

  MatchDetailPhaseBuilder get _$this {
    if (_$v != null) {
      _label = _$v.label;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MatchDetailPhase other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MatchDetailPhase;
  }

  @override
  void update(void updates(MatchDetailPhaseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$MatchDetailPhase build() {
    final _$result = _$v ?? new _$MatchDetailPhase._(label: label);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_phase.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CalendarPhase> _$calendarPhaseSerializer =
    new _$CalendarPhaseSerializer();

class _$CalendarPhaseSerializer implements StructuredSerializer<CalendarPhase> {
  @override
  final Iterable<Type> types = const [CalendarPhase, _$CalendarPhase];
  @override
  final String wireName = 'CalendarPhase';

  @override
  Iterable serialize(Serializers serializers, CalendarPhase object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'isCurrent',
      serializers.serialize(object.isCurrent,
          specifiedType: const FullType(bool)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'matchDays',
      serializers.serialize(object.matchDays,
          specifiedType:
              const FullType(BuiltList, const [const FullType(MatchDay)])),
    ];

    return result;
  }

  @override
  CalendarPhase deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CalendarPhaseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'isCurrent':
          result.isCurrent = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'matchDays':
          result.matchDays.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(MatchDay)])) as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$CalendarPhase extends CalendarPhase {
  @override
  final bool isCurrent;
  @override
  final String name;
  @override
  final BuiltList<MatchDay> matchDays;

  factory _$CalendarPhase([void updates(CalendarPhaseBuilder b)]) =>
      (new CalendarPhaseBuilder()..update(updates)).build();

  _$CalendarPhase._({this.isCurrent, this.name, this.matchDays}) : super._() {
    if (isCurrent == null) {
      throw new BuiltValueNullFieldError('CalendarPhase', 'isCurrent');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('CalendarPhase', 'name');
    }
    if (matchDays == null) {
      throw new BuiltValueNullFieldError('CalendarPhase', 'matchDays');
    }
  }

  @override
  CalendarPhase rebuild(void updates(CalendarPhaseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CalendarPhaseBuilder toBuilder() => new CalendarPhaseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CalendarPhase &&
        isCurrent == other.isCurrent &&
        name == other.name &&
        matchDays == other.matchDays;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, isCurrent.hashCode), name.hashCode), matchDays.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CalendarPhase')
          ..add('isCurrent', isCurrent)
          ..add('name', name)
          ..add('matchDays', matchDays))
        .toString();
  }
}

class CalendarPhaseBuilder
    implements Builder<CalendarPhase, CalendarPhaseBuilder> {
  _$CalendarPhase _$v;

  bool _isCurrent;
  bool get isCurrent => _$this._isCurrent;
  set isCurrent(bool isCurrent) => _$this._isCurrent = isCurrent;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  ListBuilder<MatchDay> _matchDays;
  ListBuilder<MatchDay> get matchDays =>
      _$this._matchDays ??= new ListBuilder<MatchDay>();
  set matchDays(ListBuilder<MatchDay> matchDays) =>
      _$this._matchDays = matchDays;

  CalendarPhaseBuilder();

  CalendarPhaseBuilder get _$this {
    if (_$v != null) {
      _isCurrent = _$v.isCurrent;
      _name = _$v.name;
      _matchDays = _$v.matchDays?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CalendarPhase other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CalendarPhase;
  }

  @override
  void update(void updates(CalendarPhaseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$CalendarPhase build() {
    _$CalendarPhase _$result;
    try {
      _$result = _$v ??
          new _$CalendarPhase._(
              isCurrent: isCurrent, name: name, matchDays: matchDays.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'matchDays';
        matchDays.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CalendarPhase', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

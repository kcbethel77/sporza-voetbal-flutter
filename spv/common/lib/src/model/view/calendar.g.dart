// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Calendar> _$calendarSerializer = new _$CalendarSerializer();

class _$CalendarSerializer implements StructuredSerializer<Calendar> {
  @override
  final Iterable<Type> types = const [Calendar, _$Calendar];
  @override
  final String wireName = 'Calendar';

  @override
  Iterable serialize(Serializers serializers, Calendar object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'competitionTitle',
      serializers.serialize(object.competitionTitle,
          specifiedType: const FullType(String)),
      'phases',
      serializers.serialize(object.phases,
          specifiedType:
              const FullType(BuiltList, const [const FullType(CalendarPhase)])),
    ];

    return result;
  }

  @override
  Calendar deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CalendarBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'competitionTitle':
          result.competitionTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phases':
          result.phases.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CalendarPhase)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$Calendar extends Calendar {
  @override
  final String competitionTitle;
  @override
  final BuiltList<CalendarPhase> phases;

  factory _$Calendar([void updates(CalendarBuilder b)]) =>
      (new CalendarBuilder()..update(updates)).build();

  _$Calendar._({this.competitionTitle, this.phases}) : super._() {
    if (competitionTitle == null) {
      throw new BuiltValueNullFieldError('Calendar', 'competitionTitle');
    }
    if (phases == null) {
      throw new BuiltValueNullFieldError('Calendar', 'phases');
    }
  }

  @override
  Calendar rebuild(void updates(CalendarBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CalendarBuilder toBuilder() => new CalendarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Calendar &&
        competitionTitle == other.competitionTitle &&
        phases == other.phases;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, competitionTitle.hashCode), phases.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Calendar')
          ..add('competitionTitle', competitionTitle)
          ..add('phases', phases))
        .toString();
  }
}

class CalendarBuilder implements Builder<Calendar, CalendarBuilder> {
  _$Calendar _$v;

  String _competitionTitle;
  String get competitionTitle => _$this._competitionTitle;
  set competitionTitle(String competitionTitle) =>
      _$this._competitionTitle = competitionTitle;

  ListBuilder<CalendarPhase> _phases;
  ListBuilder<CalendarPhase> get phases =>
      _$this._phases ??= new ListBuilder<CalendarPhase>();
  set phases(ListBuilder<CalendarPhase> phases) => _$this._phases = phases;

  CalendarBuilder();

  CalendarBuilder get _$this {
    if (_$v != null) {
      _competitionTitle = _$v.competitionTitle;
      _phases = _$v.phases?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Calendar other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Calendar;
  }

  @override
  void update(void updates(CalendarBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Calendar build() {
    _$Calendar _$result;
    try {
      _$result = _$v ??
          new _$Calendar._(
              competitionTitle: competitionTitle, phases: phases.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'phases';
        phases.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Calendar', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

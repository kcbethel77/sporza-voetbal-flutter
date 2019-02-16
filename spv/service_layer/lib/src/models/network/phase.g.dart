// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phase.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Phase> _$phaseSerializer = new _$PhaseSerializer();

class _$PhaseSerializer implements StructuredSerializer<Phase> {
  @override
  final Iterable<Type> types = const [Phase, _$Phase];
  @override
  final String wireName = 'Phase';

  @override
  Iterable serialize(Serializers serializers, Phase object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'label',
      serializers.serialize(object.label,
          specifiedType: const FullType(String)),
      'labelShort',
      serializers.serialize(object.labelShort,
          specifiedType: const FullType(String)),
    ];
    if (object.currentMatchDay != null) {
      result
        ..add('currentMatchDay')
        ..add(serializers.serialize(object.currentMatchDay,
            specifiedType: const FullType(String)));
    }
    if (object.currentMatchDayIndex != null) {
      result
        ..add('currentMatchDayIndex')
        ..add(serializers.serialize(object.currentMatchDayIndex,
            specifiedType: const FullType(int)));
    }
    if (object.matchDays != null) {
      result
        ..add('matchDays')
        ..add(serializers.serialize(object.matchDays,
            specifiedType:
                const FullType(BuiltList, const [const FullType(MatchDay)])));
    }
    if (object.ranking != null) {
      result
        ..add('ranking')
        ..add(serializers.serialize(object.ranking,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Ranking)])));
    }

    return result;
  }

  @override
  Phase deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PhaseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'labelShort':
          result.labelShort = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'currentMatchDay':
          result.currentMatchDay = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'currentMatchDayIndex':
          result.currentMatchDayIndex = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'matchDays':
          result.matchDays.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(MatchDay)])) as BuiltList);
          break;
        case 'ranking':
          result.ranking.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(Ranking)])) as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$Phase extends Phase {
  @override
  final String id;
  @override
  final String label;
  @override
  final String labelShort;
  @override
  final String currentMatchDay;
  @override
  final int currentMatchDayIndex;
  @override
  final BuiltList<MatchDay> matchDays;
  @override
  final BuiltList<Ranking> ranking;

  factory _$Phase([void updates(PhaseBuilder b)]) =>
      (new PhaseBuilder()..update(updates)).build();

  _$Phase._(
      {this.id,
      this.label,
      this.labelShort,
      this.currentMatchDay,
      this.currentMatchDayIndex,
      this.matchDays,
      this.ranking})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Phase', 'id');
    }
    if (label == null) {
      throw new BuiltValueNullFieldError('Phase', 'label');
    }
    if (labelShort == null) {
      throw new BuiltValueNullFieldError('Phase', 'labelShort');
    }
  }

  @override
  Phase rebuild(void updates(PhaseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  PhaseBuilder toBuilder() => new PhaseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Phase &&
        id == other.id &&
        label == other.label &&
        labelShort == other.labelShort &&
        currentMatchDay == other.currentMatchDay &&
        currentMatchDayIndex == other.currentMatchDayIndex &&
        matchDays == other.matchDays &&
        ranking == other.ranking;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), label.hashCode),
                        labelShort.hashCode),
                    currentMatchDay.hashCode),
                currentMatchDayIndex.hashCode),
            matchDays.hashCode),
        ranking.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Phase')
          ..add('id', id)
          ..add('label', label)
          ..add('labelShort', labelShort)
          ..add('currentMatchDay', currentMatchDay)
          ..add('currentMatchDayIndex', currentMatchDayIndex)
          ..add('matchDays', matchDays)
          ..add('ranking', ranking))
        .toString();
  }
}

class PhaseBuilder implements Builder<Phase, PhaseBuilder> {
  _$Phase _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _label;
  String get label => _$this._label;
  set label(String label) => _$this._label = label;

  String _labelShort;
  String get labelShort => _$this._labelShort;
  set labelShort(String labelShort) => _$this._labelShort = labelShort;

  String _currentMatchDay;
  String get currentMatchDay => _$this._currentMatchDay;
  set currentMatchDay(String currentMatchDay) =>
      _$this._currentMatchDay = currentMatchDay;

  int _currentMatchDayIndex;
  int get currentMatchDayIndex => _$this._currentMatchDayIndex;
  set currentMatchDayIndex(int currentMatchDayIndex) =>
      _$this._currentMatchDayIndex = currentMatchDayIndex;

  ListBuilder<MatchDay> _matchDays;
  ListBuilder<MatchDay> get matchDays =>
      _$this._matchDays ??= new ListBuilder<MatchDay>();
  set matchDays(ListBuilder<MatchDay> matchDays) =>
      _$this._matchDays = matchDays;

  ListBuilder<Ranking> _ranking;
  ListBuilder<Ranking> get ranking =>
      _$this._ranking ??= new ListBuilder<Ranking>();
  set ranking(ListBuilder<Ranking> ranking) => _$this._ranking = ranking;

  PhaseBuilder();

  PhaseBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _label = _$v.label;
      _labelShort = _$v.labelShort;
      _currentMatchDay = _$v.currentMatchDay;
      _currentMatchDayIndex = _$v.currentMatchDayIndex;
      _matchDays = _$v.matchDays?.toBuilder();
      _ranking = _$v.ranking?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Phase other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Phase;
  }

  @override
  void update(void updates(PhaseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Phase build() {
    _$Phase _$result;
    try {
      _$result = _$v ??
          new _$Phase._(
              id: id,
              label: label,
              labelShort: labelShort,
              currentMatchDay: currentMatchDay,
              currentMatchDayIndex: currentMatchDayIndex,
              matchDays: _matchDays?.build(),
              ranking: _ranking?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'matchDays';
        _matchDays?.build();
        _$failedField = 'ranking';
        _ranking?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Phase', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

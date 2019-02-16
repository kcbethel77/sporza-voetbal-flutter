// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ranking.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Ranking> _$rankingSerializer = new _$RankingSerializer();

class _$RankingSerializer implements StructuredSerializer<Ranking> {
  @override
  final Iterable<Type> types = const [Ranking, _$Ranking];
  @override
  final String wireName = 'Ranking';

  @override
  Iterable serialize(Serializers serializers, Ranking object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'competitionTitle',
      serializers.serialize(object.competitionTitle,
          specifiedType: const FullType(String)),
      'phases',
      serializers.serialize(object.phases,
          specifiedType:
              const FullType(BuiltList, const [const FullType(RankingPhase)])),
    ];

    return result;
  }

  @override
  Ranking deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RankingBuilder();

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
                      BuiltList, const [const FullType(RankingPhase)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$Ranking extends Ranking {
  @override
  final String competitionTitle;
  @override
  final BuiltList<RankingPhase> phases;

  factory _$Ranking([void updates(RankingBuilder b)]) =>
      (new RankingBuilder()..update(updates)).build();

  _$Ranking._({this.competitionTitle, this.phases}) : super._() {
    if (competitionTitle == null) {
      throw new BuiltValueNullFieldError('Ranking', 'competitionTitle');
    }
    if (phases == null) {
      throw new BuiltValueNullFieldError('Ranking', 'phases');
    }
  }

  @override
  Ranking rebuild(void updates(RankingBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  RankingBuilder toBuilder() => new RankingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Ranking &&
        competitionTitle == other.competitionTitle &&
        phases == other.phases;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, competitionTitle.hashCode), phases.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Ranking')
          ..add('competitionTitle', competitionTitle)
          ..add('phases', phases))
        .toString();
  }
}

class RankingBuilder implements Builder<Ranking, RankingBuilder> {
  _$Ranking _$v;

  String _competitionTitle;
  String get competitionTitle => _$this._competitionTitle;
  set competitionTitle(String competitionTitle) =>
      _$this._competitionTitle = competitionTitle;

  ListBuilder<RankingPhase> _phases;
  ListBuilder<RankingPhase> get phases =>
      _$this._phases ??= new ListBuilder<RankingPhase>();
  set phases(ListBuilder<RankingPhase> phases) => _$this._phases = phases;

  RankingBuilder();

  RankingBuilder get _$this {
    if (_$v != null) {
      _competitionTitle = _$v.competitionTitle;
      _phases = _$v.phases?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Ranking other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Ranking;
  }

  @override
  void update(void updates(RankingBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Ranking build() {
    _$Ranking _$result;
    try {
      _$result = _$v ??
          new _$Ranking._(
              competitionTitle: competitionTitle, phases: phases.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'phases';
        phases.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Ranking', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

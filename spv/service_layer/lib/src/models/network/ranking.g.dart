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
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'rank',
      serializers.serialize(object.rank, specifiedType: const FullType(int)),
      'team',
      serializers.serialize(object.team, specifiedType: const FullType(Team)),
      'nrOfMatches',
      serializers.serialize(object.nrOfMatches,
          specifiedType: const FullType(int)),
      'points',
      serializers.serialize(object.points, specifiedType: const FullType(int)),
      'accessibilityText',
      serializers.serialize(object.accessibilityText,
          specifiedType: const FullType(String)),
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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rank':
          result.rank = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'team':
          result.team.replace(serializers.deserialize(value,
              specifiedType: const FullType(Team)) as Team);
          break;
        case 'nrOfMatches':
          result.nrOfMatches = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'points':
          result.points = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'accessibilityText':
          result.accessibilityText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Ranking extends Ranking {
  @override
  final String id;
  @override
  final int rank;
  @override
  final Team team;
  @override
  final int nrOfMatches;
  @override
  final int points;
  @override
  final String accessibilityText;

  factory _$Ranking([void updates(RankingBuilder b)]) =>
      (new RankingBuilder()..update(updates)).build();

  _$Ranking._(
      {this.id,
      this.rank,
      this.team,
      this.nrOfMatches,
      this.points,
      this.accessibilityText})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Ranking', 'id');
    }
    if (rank == null) {
      throw new BuiltValueNullFieldError('Ranking', 'rank');
    }
    if (team == null) {
      throw new BuiltValueNullFieldError('Ranking', 'team');
    }
    if (nrOfMatches == null) {
      throw new BuiltValueNullFieldError('Ranking', 'nrOfMatches');
    }
    if (points == null) {
      throw new BuiltValueNullFieldError('Ranking', 'points');
    }
    if (accessibilityText == null) {
      throw new BuiltValueNullFieldError('Ranking', 'accessibilityText');
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
        id == other.id &&
        rank == other.rank &&
        team == other.team &&
        nrOfMatches == other.nrOfMatches &&
        points == other.points &&
        accessibilityText == other.accessibilityText;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, id.hashCode), rank.hashCode), team.hashCode),
                nrOfMatches.hashCode),
            points.hashCode),
        accessibilityText.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Ranking')
          ..add('id', id)
          ..add('rank', rank)
          ..add('team', team)
          ..add('nrOfMatches', nrOfMatches)
          ..add('points', points)
          ..add('accessibilityText', accessibilityText))
        .toString();
  }
}

class RankingBuilder implements Builder<Ranking, RankingBuilder> {
  _$Ranking _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  int _rank;
  int get rank => _$this._rank;
  set rank(int rank) => _$this._rank = rank;

  TeamBuilder _team;
  TeamBuilder get team => _$this._team ??= new TeamBuilder();
  set team(TeamBuilder team) => _$this._team = team;

  int _nrOfMatches;
  int get nrOfMatches => _$this._nrOfMatches;
  set nrOfMatches(int nrOfMatches) => _$this._nrOfMatches = nrOfMatches;

  int _points;
  int get points => _$this._points;
  set points(int points) => _$this._points = points;

  String _accessibilityText;
  String get accessibilityText => _$this._accessibilityText;
  set accessibilityText(String accessibilityText) =>
      _$this._accessibilityText = accessibilityText;

  RankingBuilder();

  RankingBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _rank = _$v.rank;
      _team = _$v.team?.toBuilder();
      _nrOfMatches = _$v.nrOfMatches;
      _points = _$v.points;
      _accessibilityText = _$v.accessibilityText;
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
              id: id,
              rank: rank,
              team: team.build(),
              nrOfMatches: nrOfMatches,
              points: points,
              accessibilityText: accessibilityText);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'team';
        team.build();
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

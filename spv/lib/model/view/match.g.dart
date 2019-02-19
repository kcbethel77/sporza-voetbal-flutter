// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Match> _$matchSerializer = new _$MatchSerializer();

class _$MatchSerializer implements StructuredSerializer<Match> {
  @override
  final Iterable<Type> types = const [Match, _$Match];
  @override
  final String wireName = 'Match';

  @override
  Iterable serialize(Serializers serializers, Match object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'homeTeam',
      serializers.serialize(object.homeTeam,
          specifiedType: const FullType(Team)),
      'awayTeam',
      serializers.serialize(object.awayTeam,
          specifiedType: const FullType(Team)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(MatchStatus)),
      'homeScore',
      serializers.serialize(object.homeScore,
          specifiedType: const FullType(int)),
      'awayScore',
      serializers.serialize(object.awayScore,
          specifiedType: const FullType(int)),
      'isKnockout',
      serializers.serialize(object.isKnockout,
          specifiedType: const FullType(bool)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'accessibility',
      serializers.serialize(object.accessibility,
          specifiedType: const FullType(String)),
    ];
    if (object.startTime != null) {
      result
        ..add('startTime')
        ..add(serializers.serialize(object.startTime,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Match deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MatchBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'homeTeam':
          result.homeTeam.replace(serializers.deserialize(value,
              specifiedType: const FullType(Team)) as Team);
          break;
        case 'awayTeam':
          result.awayTeam.replace(serializers.deserialize(value,
              specifiedType: const FullType(Team)) as Team);
          break;
        case 'startTime':
          result.startTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(MatchStatus)) as MatchStatus;
          break;
        case 'homeScore':
          result.homeScore = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'awayScore':
          result.awayScore = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'isKnockout':
          result.isKnockout = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'accessibility':
          result.accessibility = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Match extends Match {
  @override
  final Team homeTeam;
  @override
  final Team awayTeam;
  @override
  final String startTime;
  @override
  final MatchStatus status;
  @override
  final int homeScore;
  @override
  final int awayScore;
  @override
  final bool isKnockout;
  @override
  final String id;
  @override
  final String accessibility;

  factory _$Match([void updates(MatchBuilder b)]) =>
      (new MatchBuilder()..update(updates)).build();

  _$Match._(
      {this.homeTeam,
      this.awayTeam,
      this.startTime,
      this.status,
      this.homeScore,
      this.awayScore,
      this.isKnockout,
      this.id,
      this.accessibility})
      : super._() {
    if (homeTeam == null) {
      throw new BuiltValueNullFieldError('Match', 'homeTeam');
    }
    if (awayTeam == null) {
      throw new BuiltValueNullFieldError('Match', 'awayTeam');
    }
    if (status == null) {
      throw new BuiltValueNullFieldError('Match', 'status');
    }
    if (homeScore == null) {
      throw new BuiltValueNullFieldError('Match', 'homeScore');
    }
    if (awayScore == null) {
      throw new BuiltValueNullFieldError('Match', 'awayScore');
    }
    if (isKnockout == null) {
      throw new BuiltValueNullFieldError('Match', 'isKnockout');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('Match', 'id');
    }
    if (accessibility == null) {
      throw new BuiltValueNullFieldError('Match', 'accessibility');
    }
  }

  @override
  Match rebuild(void updates(MatchBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MatchBuilder toBuilder() => new MatchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Match &&
        homeTeam == other.homeTeam &&
        awayTeam == other.awayTeam &&
        startTime == other.startTime &&
        status == other.status &&
        homeScore == other.homeScore &&
        awayScore == other.awayScore &&
        isKnockout == other.isKnockout &&
        id == other.id &&
        accessibility == other.accessibility;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, homeTeam.hashCode),
                                    awayTeam.hashCode),
                                startTime.hashCode),
                            status.hashCode),
                        homeScore.hashCode),
                    awayScore.hashCode),
                isKnockout.hashCode),
            id.hashCode),
        accessibility.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Match')
          ..add('homeTeam', homeTeam)
          ..add('awayTeam', awayTeam)
          ..add('startTime', startTime)
          ..add('status', status)
          ..add('homeScore', homeScore)
          ..add('awayScore', awayScore)
          ..add('isKnockout', isKnockout)
          ..add('id', id)
          ..add('accessibility', accessibility))
        .toString();
  }
}

class MatchBuilder implements Builder<Match, MatchBuilder> {
  _$Match _$v;

  TeamBuilder _homeTeam;
  TeamBuilder get homeTeam => _$this._homeTeam ??= new TeamBuilder();
  set homeTeam(TeamBuilder homeTeam) => _$this._homeTeam = homeTeam;

  TeamBuilder _awayTeam;
  TeamBuilder get awayTeam => _$this._awayTeam ??= new TeamBuilder();
  set awayTeam(TeamBuilder awayTeam) => _$this._awayTeam = awayTeam;

  String _startTime;
  String get startTime => _$this._startTime;
  set startTime(String startTime) => _$this._startTime = startTime;

  MatchStatus _status;
  MatchStatus get status => _$this._status;
  set status(MatchStatus status) => _$this._status = status;

  int _homeScore;
  int get homeScore => _$this._homeScore;
  set homeScore(int homeScore) => _$this._homeScore = homeScore;

  int _awayScore;
  int get awayScore => _$this._awayScore;
  set awayScore(int awayScore) => _$this._awayScore = awayScore;

  bool _isKnockout;
  bool get isKnockout => _$this._isKnockout;
  set isKnockout(bool isKnockout) => _$this._isKnockout = isKnockout;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _accessibility;
  String get accessibility => _$this._accessibility;
  set accessibility(String accessibility) =>
      _$this._accessibility = accessibility;

  MatchBuilder();

  MatchBuilder get _$this {
    if (_$v != null) {
      _homeTeam = _$v.homeTeam?.toBuilder();
      _awayTeam = _$v.awayTeam?.toBuilder();
      _startTime = _$v.startTime;
      _status = _$v.status;
      _homeScore = _$v.homeScore;
      _awayScore = _$v.awayScore;
      _isKnockout = _$v.isKnockout;
      _id = _$v.id;
      _accessibility = _$v.accessibility;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Match other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Match;
  }

  @override
  void update(void updates(MatchBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Match build() {
    _$Match _$result;
    try {
      _$result = _$v ??
          new _$Match._(
              homeTeam: homeTeam.build(),
              awayTeam: awayTeam.build(),
              startTime: startTime,
              status: status,
              homeScore: homeScore,
              awayScore: awayScore,
              isKnockout: isKnockout,
              id: id,
              accessibility: accessibility);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'homeTeam';
        homeTeam.build();
        _$failedField = 'awayTeam';
        awayTeam.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Match', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

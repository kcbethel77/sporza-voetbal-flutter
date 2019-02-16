// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_detail_heading.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GameDetailHeading> _$gameDetailHeadingSerializer =
    new _$GameDetailHeadingSerializer();

class _$GameDetailHeadingSerializer
    implements StructuredSerializer<GameDetailHeading> {
  @override
  final Iterable<Type> types = const [GameDetailHeading, _$GameDetailHeading];
  @override
  final String wireName = 'GameDetailHeading';

  @override
  Iterable serialize(Serializers serializers, GameDetailHeading object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'competitionTitle',
      serializers.serialize(object.competitionTitle,
          specifiedType: const FullType(String)),
      'homeTeam',
      serializers.serialize(object.homeTeam,
          specifiedType: const FullType(Team)),
      'awayTeam',
      serializers.serialize(object.awayTeam,
          specifiedType: const FullType(Team)),
      'info',
      serializers.serialize(object.info,
          specifiedType: const FullType(HeadingInfo)),
    ];

    return result;
  }

  @override
  GameDetailHeading deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GameDetailHeadingBuilder();

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
        case 'homeTeam':
          result.homeTeam.replace(serializers.deserialize(value,
              specifiedType: const FullType(Team)) as Team);
          break;
        case 'awayTeam':
          result.awayTeam.replace(serializers.deserialize(value,
              specifiedType: const FullType(Team)) as Team);
          break;
        case 'info':
          result.info = serializers.deserialize(value,
              specifiedType: const FullType(HeadingInfo)) as HeadingInfo;
          break;
      }
    }

    return result.build();
  }
}

class _$GameDetailHeading extends GameDetailHeading {
  @override
  final String competitionTitle;
  @override
  final Team homeTeam;
  @override
  final Team awayTeam;
  @override
  final HeadingInfo info;

  factory _$GameDetailHeading([void updates(GameDetailHeadingBuilder b)]) =>
      (new GameDetailHeadingBuilder()..update(updates)).build();

  _$GameDetailHeading._(
      {this.competitionTitle, this.homeTeam, this.awayTeam, this.info})
      : super._() {
    if (competitionTitle == null) {
      throw new BuiltValueNullFieldError(
          'GameDetailHeading', 'competitionTitle');
    }
    if (homeTeam == null) {
      throw new BuiltValueNullFieldError('GameDetailHeading', 'homeTeam');
    }
    if (awayTeam == null) {
      throw new BuiltValueNullFieldError('GameDetailHeading', 'awayTeam');
    }
    if (info == null) {
      throw new BuiltValueNullFieldError('GameDetailHeading', 'info');
    }
  }

  @override
  GameDetailHeading rebuild(void updates(GameDetailHeadingBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GameDetailHeadingBuilder toBuilder() =>
      new GameDetailHeadingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GameDetailHeading &&
        competitionTitle == other.competitionTitle &&
        homeTeam == other.homeTeam &&
        awayTeam == other.awayTeam &&
        info == other.info;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, competitionTitle.hashCode), homeTeam.hashCode),
            awayTeam.hashCode),
        info.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GameDetailHeading')
          ..add('competitionTitle', competitionTitle)
          ..add('homeTeam', homeTeam)
          ..add('awayTeam', awayTeam)
          ..add('info', info))
        .toString();
  }
}

class GameDetailHeadingBuilder
    implements Builder<GameDetailHeading, GameDetailHeadingBuilder> {
  _$GameDetailHeading _$v;

  String _competitionTitle;
  String get competitionTitle => _$this._competitionTitle;
  set competitionTitle(String competitionTitle) =>
      _$this._competitionTitle = competitionTitle;

  TeamBuilder _homeTeam;
  TeamBuilder get homeTeam => _$this._homeTeam ??= new TeamBuilder();
  set homeTeam(TeamBuilder homeTeam) => _$this._homeTeam = homeTeam;

  TeamBuilder _awayTeam;
  TeamBuilder get awayTeam => _$this._awayTeam ??= new TeamBuilder();
  set awayTeam(TeamBuilder awayTeam) => _$this._awayTeam = awayTeam;

  HeadingInfo _info;
  HeadingInfo get info => _$this._info;
  set info(HeadingInfo info) => _$this._info = info;

  GameDetailHeadingBuilder();

  GameDetailHeadingBuilder get _$this {
    if (_$v != null) {
      _competitionTitle = _$v.competitionTitle;
      _homeTeam = _$v.homeTeam?.toBuilder();
      _awayTeam = _$v.awayTeam?.toBuilder();
      _info = _$v.info;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GameDetailHeading other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GameDetailHeading;
  }

  @override
  void update(void updates(GameDetailHeadingBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$GameDetailHeading build() {
    _$GameDetailHeading _$result;
    try {
      _$result = _$v ??
          new _$GameDetailHeading._(
              competitionTitle: competitionTitle,
              homeTeam: homeTeam.build(),
              awayTeam: awayTeam.build(),
              info: info);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'homeTeam';
        homeTeam.build();
        _$failedField = 'awayTeam';
        awayTeam.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GameDetailHeading', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

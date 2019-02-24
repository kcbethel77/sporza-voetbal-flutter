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
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
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
      'statusName',
      serializers.serialize(object.statusName,
          specifiedType: const FullType(String)),
      'accessibilityText',
      serializers.serialize(object.accessibilityText,
          specifiedType: const FullType(String)),
      'isKnockout',
      serializers.serialize(object.isKnockout,
          specifiedType: const FullType(bool)),
    ];
    if (object.startTime != null) {
      result
        ..add('startTime')
        ..add(serializers.serialize(object.startTime,
            specifiedType: const FullType(String)));
    }
    if (object.statusLabel != null) {
      result
        ..add('statusLabel')
        ..add(serializers.serialize(object.statusLabel,
            specifiedType: const FullType(String)));
    }
    if (object.knockOutEnd != null) {
      result
        ..add('knockoutEnd')
        ..add(serializers.serialize(object.knockOutEnd,
            specifiedType: const FullType(String)));
    }
    if (object.statusDay != null) {
      result
        ..add('statusDay')
        ..add(serializers.serialize(object.statusDay,
            specifiedType: const FullType(String)));
    }
    if (object.statusDate != null) {
      result
        ..add('statusDate')
        ..add(serializers.serialize(object.statusDate,
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
        case 'id':
          result.id = serializers.deserialize(value,
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
        case 'statusName':
          result.statusName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'statusLabel':
          result.statusLabel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'accessibilityText':
          result.accessibilityText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isKnockout':
          result.isKnockout = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'knockoutEnd':
          result.knockOutEnd = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'statusDay':
          result.statusDay = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'statusDate':
          result.statusDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Match extends Match {
  @override
  final String id;
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
  final String statusName;
  @override
  final String statusLabel;
  @override
  final String accessibilityText;
  @override
  final bool isKnockout;
  @override
  final String knockOutEnd;
  @override
  final String statusDay;
  @override
  final String statusDate;

  factory _$Match([void updates(MatchBuilder b)]) =>
      (new MatchBuilder()..update(updates)).build();

  _$Match._(
      {this.id,
      this.homeTeam,
      this.awayTeam,
      this.startTime,
      this.status,
      this.homeScore,
      this.awayScore,
      this.statusName,
      this.statusLabel,
      this.accessibilityText,
      this.isKnockout,
      this.knockOutEnd,
      this.statusDay,
      this.statusDate})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Match', 'id');
    }
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
    if (statusName == null) {
      throw new BuiltValueNullFieldError('Match', 'statusName');
    }
    if (accessibilityText == null) {
      throw new BuiltValueNullFieldError('Match', 'accessibilityText');
    }
    if (isKnockout == null) {
      throw new BuiltValueNullFieldError('Match', 'isKnockout');
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
        id == other.id &&
        homeTeam == other.homeTeam &&
        awayTeam == other.awayTeam &&
        startTime == other.startTime &&
        status == other.status &&
        homeScore == other.homeScore &&
        awayScore == other.awayScore &&
        statusName == other.statusName &&
        statusLabel == other.statusLabel &&
        accessibilityText == other.accessibilityText &&
        isKnockout == other.isKnockout &&
        knockOutEnd == other.knockOutEnd &&
        statusDay == other.statusDay &&
        statusDate == other.statusDate;
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
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc($jc(0, id.hashCode),
                                                        homeTeam.hashCode),
                                                    awayTeam.hashCode),
                                                startTime.hashCode),
                                            status.hashCode),
                                        homeScore.hashCode),
                                    awayScore.hashCode),
                                statusName.hashCode),
                            statusLabel.hashCode),
                        accessibilityText.hashCode),
                    isKnockout.hashCode),
                knockOutEnd.hashCode),
            statusDay.hashCode),
        statusDate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Match')
          ..add('id', id)
          ..add('homeTeam', homeTeam)
          ..add('awayTeam', awayTeam)
          ..add('startTime', startTime)
          ..add('status', status)
          ..add('homeScore', homeScore)
          ..add('awayScore', awayScore)
          ..add('statusName', statusName)
          ..add('statusLabel', statusLabel)
          ..add('accessibilityText', accessibilityText)
          ..add('isKnockout', isKnockout)
          ..add('knockOutEnd', knockOutEnd)
          ..add('statusDay', statusDay)
          ..add('statusDate', statusDate))
        .toString();
  }
}

class MatchBuilder implements Builder<Match, MatchBuilder> {
  _$Match _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

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

  String _statusName;
  String get statusName => _$this._statusName;
  set statusName(String statusName) => _$this._statusName = statusName;

  String _statusLabel;
  String get statusLabel => _$this._statusLabel;
  set statusLabel(String statusLabel) => _$this._statusLabel = statusLabel;

  String _accessibilityText;
  String get accessibilityText => _$this._accessibilityText;
  set accessibilityText(String accessibilityText) =>
      _$this._accessibilityText = accessibilityText;

  bool _isKnockout;
  bool get isKnockout => _$this._isKnockout;
  set isKnockout(bool isKnockout) => _$this._isKnockout = isKnockout;

  String _knockOutEnd;
  String get knockOutEnd => _$this._knockOutEnd;
  set knockOutEnd(String knockOutEnd) => _$this._knockOutEnd = knockOutEnd;

  String _statusDay;
  String get statusDay => _$this._statusDay;
  set statusDay(String statusDay) => _$this._statusDay = statusDay;

  String _statusDate;
  String get statusDate => _$this._statusDate;
  set statusDate(String statusDate) => _$this._statusDate = statusDate;

  MatchBuilder();

  MatchBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _homeTeam = _$v.homeTeam?.toBuilder();
      _awayTeam = _$v.awayTeam?.toBuilder();
      _startTime = _$v.startTime;
      _status = _$v.status;
      _homeScore = _$v.homeScore;
      _awayScore = _$v.awayScore;
      _statusName = _$v.statusName;
      _statusLabel = _$v.statusLabel;
      _accessibilityText = _$v.accessibilityText;
      _isKnockout = _$v.isKnockout;
      _knockOutEnd = _$v.knockOutEnd;
      _statusDay = _$v.statusDay;
      _statusDate = _$v.statusDate;
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
              id: id,
              homeTeam: homeTeam.build(),
              awayTeam: awayTeam.build(),
              startTime: startTime,
              status: status,
              homeScore: homeScore,
              awayScore: awayScore,
              statusName: statusName,
              statusLabel: statusLabel,
              accessibilityText: accessibilityText,
              isKnockout: isKnockout,
              knockOutEnd: knockOutEnd,
              statusDay: statusDay,
              statusDate: statusDate);
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

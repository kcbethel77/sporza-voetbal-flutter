// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MatchDetail> _$matchDetailSerializer = new _$MatchDetailSerializer();

class _$MatchDetailSerializer implements StructuredSerializer<MatchDetail> {
  @override
  final Iterable<Type> types = const [MatchDetail, _$MatchDetail];
  @override
  final String wireName = 'MatchDetail';

  @override
  Iterable serialize(Serializers serializers, MatchDetail object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'competition',
      serializers.serialize(object.competition,
          specifiedType: const FullType(MatchDetailCompetition)),
      'phase',
      serializers.serialize(object.phase,
          specifiedType: const FullType(MatchDetailPhase)),
      'matchDay',
      serializers.serialize(object.matchDay,
          specifiedType: const FullType(MatchDetailMatchDay)),
      'homeTeam',
      serializers.serialize(object.homeTeam,
          specifiedType: const FullType(Team)),
      'awayTeam',
      serializers.serialize(object.awayTeam,
          specifiedType: const FullType(Team)),
      'startTime',
      serializers.serialize(object.startTime,
          specifiedType: const FullType(String)),
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
      'statusLabel',
      serializers.serialize(object.statusLabel,
          specifiedType: const FullType(String)),
      'accessibilityText',
      serializers.serialize(object.accessibilityText,
          specifiedType: const FullType(String)),
      'isKnockout',
      serializers.serialize(object.isKnockout,
          specifiedType: const FullType(bool)),
      'eventList',
      serializers.serialize(object.eventList,
          specifiedType:
              const FullType(BuiltList, const [const FullType(MatchEvent)])),
    ];
    if (object.stadium != null) {
      result
        ..add('stadium')
        ..add(serializers.serialize(object.stadium,
            specifiedType: const FullType(String)));
    }
    if (object.referee != null) {
      result
        ..add('referee')
        ..add(serializers.serialize(object.referee,
            specifiedType: const FullType(String)));
    }
    if (object.spectators != null) {
      result
        ..add('spectators')
        ..add(serializers.serialize(object.spectators,
            specifiedType: const FullType(int)));
    }
    if (object.knockoutEnd != null) {
      result
        ..add('knockoutEnd')
        ..add(serializers.serialize(object.knockoutEnd,
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
  MatchDetail deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MatchDetailBuilder();

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
        case 'competition':
          result.competition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(MatchDetailCompetition))
              as MatchDetailCompetition);
          break;
        case 'phase':
          result.phase.replace(serializers.deserialize(value,
                  specifiedType: const FullType(MatchDetailPhase))
              as MatchDetailPhase);
          break;
        case 'matchDay':
          result.matchDay.replace(serializers.deserialize(value,
                  specifiedType: const FullType(MatchDetailMatchDay))
              as MatchDetailMatchDay);
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
        case 'stadium':
          result.stadium = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'referee':
          result.referee = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'spectators':
          result.spectators = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'knockoutEnd':
          result.knockoutEnd = serializers.deserialize(value,
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
        case 'eventList':
          result.eventList.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(MatchEvent)])) as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$MatchDetail extends MatchDetail {
  @override
  final String id;
  @override
  final MatchDetailCompetition competition;
  @override
  final MatchDetailPhase phase;
  @override
  final MatchDetailMatchDay matchDay;
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
  final String stadium;
  @override
  final String referee;
  @override
  final int spectators;
  @override
  final String knockoutEnd;
  @override
  final String statusDay;
  @override
  final String statusDate;
  @override
  final BuiltList<MatchEvent> eventList;

  factory _$MatchDetail([void updates(MatchDetailBuilder b)]) =>
      (new MatchDetailBuilder()..update(updates)).build();

  _$MatchDetail._(
      {this.id,
      this.competition,
      this.phase,
      this.matchDay,
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
      this.stadium,
      this.referee,
      this.spectators,
      this.knockoutEnd,
      this.statusDay,
      this.statusDate,
      this.eventList})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('MatchDetail', 'id');
    }
    if (competition == null) {
      throw new BuiltValueNullFieldError('MatchDetail', 'competition');
    }
    if (phase == null) {
      throw new BuiltValueNullFieldError('MatchDetail', 'phase');
    }
    if (matchDay == null) {
      throw new BuiltValueNullFieldError('MatchDetail', 'matchDay');
    }
    if (homeTeam == null) {
      throw new BuiltValueNullFieldError('MatchDetail', 'homeTeam');
    }
    if (awayTeam == null) {
      throw new BuiltValueNullFieldError('MatchDetail', 'awayTeam');
    }
    if (startTime == null) {
      throw new BuiltValueNullFieldError('MatchDetail', 'startTime');
    }
    if (status == null) {
      throw new BuiltValueNullFieldError('MatchDetail', 'status');
    }
    if (homeScore == null) {
      throw new BuiltValueNullFieldError('MatchDetail', 'homeScore');
    }
    if (awayScore == null) {
      throw new BuiltValueNullFieldError('MatchDetail', 'awayScore');
    }
    if (statusName == null) {
      throw new BuiltValueNullFieldError('MatchDetail', 'statusName');
    }
    if (statusLabel == null) {
      throw new BuiltValueNullFieldError('MatchDetail', 'statusLabel');
    }
    if (accessibilityText == null) {
      throw new BuiltValueNullFieldError('MatchDetail', 'accessibilityText');
    }
    if (isKnockout == null) {
      throw new BuiltValueNullFieldError('MatchDetail', 'isKnockout');
    }
    if (eventList == null) {
      throw new BuiltValueNullFieldError('MatchDetail', 'eventList');
    }
  }

  @override
  MatchDetail rebuild(void updates(MatchDetailBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MatchDetailBuilder toBuilder() => new MatchDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MatchDetail &&
        id == other.id &&
        competition == other.competition &&
        phase == other.phase &&
        matchDay == other.matchDay &&
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
        stadium == other.stadium &&
        referee == other.referee &&
        spectators == other.spectators &&
        knockoutEnd == other.knockoutEnd &&
        statusDay == other.statusDay &&
        statusDate == other.statusDate &&
        eventList == other.eventList;
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
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc(0, id.hashCode), competition.hashCode),
                                                                                phase.hashCode),
                                                                            matchDay.hashCode),
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
                                stadium.hashCode),
                            referee.hashCode),
                        spectators.hashCode),
                    knockoutEnd.hashCode),
                statusDay.hashCode),
            statusDate.hashCode),
        eventList.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MatchDetail')
          ..add('id', id)
          ..add('competition', competition)
          ..add('phase', phase)
          ..add('matchDay', matchDay)
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
          ..add('stadium', stadium)
          ..add('referee', referee)
          ..add('spectators', spectators)
          ..add('knockoutEnd', knockoutEnd)
          ..add('statusDay', statusDay)
          ..add('statusDate', statusDate)
          ..add('eventList', eventList))
        .toString();
  }
}

class MatchDetailBuilder implements Builder<MatchDetail, MatchDetailBuilder> {
  _$MatchDetail _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  MatchDetailCompetitionBuilder _competition;
  MatchDetailCompetitionBuilder get competition =>
      _$this._competition ??= new MatchDetailCompetitionBuilder();
  set competition(MatchDetailCompetitionBuilder competition) =>
      _$this._competition = competition;

  MatchDetailPhaseBuilder _phase;
  MatchDetailPhaseBuilder get phase =>
      _$this._phase ??= new MatchDetailPhaseBuilder();
  set phase(MatchDetailPhaseBuilder phase) => _$this._phase = phase;

  MatchDetailMatchDayBuilder _matchDay;
  MatchDetailMatchDayBuilder get matchDay =>
      _$this._matchDay ??= new MatchDetailMatchDayBuilder();
  set matchDay(MatchDetailMatchDayBuilder matchDay) =>
      _$this._matchDay = matchDay;

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

  String _stadium;
  String get stadium => _$this._stadium;
  set stadium(String stadium) => _$this._stadium = stadium;

  String _referee;
  String get referee => _$this._referee;
  set referee(String referee) => _$this._referee = referee;

  int _spectators;
  int get spectators => _$this._spectators;
  set spectators(int spectators) => _$this._spectators = spectators;

  String _knockoutEnd;
  String get knockoutEnd => _$this._knockoutEnd;
  set knockoutEnd(String knockoutEnd) => _$this._knockoutEnd = knockoutEnd;

  String _statusDay;
  String get statusDay => _$this._statusDay;
  set statusDay(String statusDay) => _$this._statusDay = statusDay;

  String _statusDate;
  String get statusDate => _$this._statusDate;
  set statusDate(String statusDate) => _$this._statusDate = statusDate;

  ListBuilder<MatchEvent> _eventList;
  ListBuilder<MatchEvent> get eventList =>
      _$this._eventList ??= new ListBuilder<MatchEvent>();
  set eventList(ListBuilder<MatchEvent> eventList) =>
      _$this._eventList = eventList;

  MatchDetailBuilder();

  MatchDetailBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _competition = _$v.competition?.toBuilder();
      _phase = _$v.phase?.toBuilder();
      _matchDay = _$v.matchDay?.toBuilder();
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
      _stadium = _$v.stadium;
      _referee = _$v.referee;
      _spectators = _$v.spectators;
      _knockoutEnd = _$v.knockoutEnd;
      _statusDay = _$v.statusDay;
      _statusDate = _$v.statusDate;
      _eventList = _$v.eventList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MatchDetail other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MatchDetail;
  }

  @override
  void update(void updates(MatchDetailBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$MatchDetail build() {
    _$MatchDetail _$result;
    try {
      _$result = _$v ??
          new _$MatchDetail._(
              id: id,
              competition: competition.build(),
              phase: phase.build(),
              matchDay: matchDay.build(),
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
              stadium: stadium,
              referee: referee,
              spectators: spectators,
              knockoutEnd: knockoutEnd,
              statusDay: statusDay,
              statusDate: statusDate,
              eventList: eventList.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'competition';
        competition.build();
        _$failedField = 'phase';
        phase.build();
        _$failedField = 'matchDay';
        matchDay.build();
        _$failedField = 'homeTeam';
        homeTeam.build();
        _$failedField = 'awayTeam';
        awayTeam.build();

        _$failedField = 'eventList';
        eventList.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MatchDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

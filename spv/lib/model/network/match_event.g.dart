// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MatchEvent> _$matchEventSerializer = new _$MatchEventSerializer();

class _$MatchEventSerializer implements StructuredSerializer<MatchEvent> {
  @override
  final Iterable<Type> types = const [MatchEvent, _$MatchEvent];
  @override
  final String wireName = 'MatchEvent';

  @override
  Iterable serialize(Serializers serializers, MatchEvent object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'eventType',
      serializers.serialize(object.eventType,
          specifiedType: const FullType(String)),
      'eventOwningTeam',
      serializers.serialize(object.eventOwningTeam,
          specifiedType: const FullType(EventOwningTeam)),
    ];
    if (object.eventTime != null) {
      result
        ..add('eventTime')
        ..add(serializers.serialize(object.eventTime,
            specifiedType: const FullType(String)));
    }
    if (object.timeStamp != null) {
      result
        ..add('timestamp')
        ..add(serializers.serialize(object.timeStamp,
            specifiedType: const FullType(int)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.text != null) {
      result
        ..add('text')
        ..add(serializers.serialize(object.text,
            specifiedType: const FullType(String)));
    }
    if (object.accessibilityText != null) {
      result
        ..add('accessibilityText')
        ..add(serializers.serialize(object.accessibilityText,
            specifiedType: const FullType(String)));
    }
    if (object.homeScore != null) {
      result
        ..add('homeScore')
        ..add(serializers.serialize(object.homeScore,
            specifiedType: const FullType(int)));
    }
    if (object.awayScore != null) {
      result
        ..add('awayScore')
        ..add(serializers.serialize(object.awayScore,
            specifiedType: const FullType(int)));
    }
    if (object.person != null) {
      result
        ..add('person')
        ..add(serializers.serialize(object.person,
            specifiedType: const FullType(Person)));
    }
    if (object.subPerson != null) {
      result
        ..add('subPerson')
        ..add(serializers.serialize(object.subPerson,
            specifiedType: const FullType(Person)));
    }
    if (object.banner != null) {
      result
        ..add('banner')
        ..add(serializers.serialize(object.banner,
            specifiedType: const FullType(Banner)));
    }
    if (object.labels != null) {
      result
        ..add('labels')
        ..add(serializers.serialize(object.labels,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.media != null) {
      result
        ..add('media')
        ..add(serializers.serialize(object.media,
            specifiedType: const FullType(Media)));
    }

    return result;
  }

  @override
  MatchEvent deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MatchEventBuilder();

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
        case 'eventType':
          result.eventType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'eventTime':
          result.eventTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'timestamp':
          result.timeStamp = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'eventOwningTeam':
          result.eventOwningTeam = serializers.deserialize(value,
                  specifiedType: const FullType(EventOwningTeam))
              as EventOwningTeam;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'accessibilityText':
          result.accessibilityText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'homeScore':
          result.homeScore = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'awayScore':
          result.awayScore = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'person':
          result.person.replace(serializers.deserialize(value,
              specifiedType: const FullType(Person)) as Person);
          break;
        case 'subPerson':
          result.subPerson.replace(serializers.deserialize(value,
              specifiedType: const FullType(Person)) as Person);
          break;
        case 'banner':
          result.banner.replace(serializers.deserialize(value,
              specifiedType: const FullType(Banner)) as Banner);
          break;
        case 'labels':
          result.labels.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
              specifiedType: const FullType(Media)) as Media);
          break;
      }
    }

    return result.build();
  }
}

class _$MatchEvent extends MatchEvent {
  @override
  final String id;
  @override
  final String eventType;
  @override
  final String eventTime;
  @override
  final int timeStamp;
  @override
  final EventOwningTeam eventOwningTeam;
  @override
  final String title;
  @override
  final String text;
  @override
  final String accessibilityText;
  @override
  final int homeScore;
  @override
  final int awayScore;
  @override
  final Person person;
  @override
  final Person subPerson;
  @override
  final Banner banner;
  @override
  final BuiltList<String> labels;
  @override
  final Media media;

  factory _$MatchEvent([void updates(MatchEventBuilder b)]) =>
      (new MatchEventBuilder()..update(updates)).build();

  _$MatchEvent._(
      {this.id,
      this.eventType,
      this.eventTime,
      this.timeStamp,
      this.eventOwningTeam,
      this.title,
      this.text,
      this.accessibilityText,
      this.homeScore,
      this.awayScore,
      this.person,
      this.subPerson,
      this.banner,
      this.labels,
      this.media})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('MatchEvent', 'id');
    }
    if (eventType == null) {
      throw new BuiltValueNullFieldError('MatchEvent', 'eventType');
    }
    if (eventOwningTeam == null) {
      throw new BuiltValueNullFieldError('MatchEvent', 'eventOwningTeam');
    }
  }

  @override
  MatchEvent rebuild(void updates(MatchEventBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MatchEventBuilder toBuilder() => new MatchEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MatchEvent &&
        id == other.id &&
        eventType == other.eventType &&
        eventTime == other.eventTime &&
        timeStamp == other.timeStamp &&
        eventOwningTeam == other.eventOwningTeam &&
        title == other.title &&
        text == other.text &&
        accessibilityText == other.accessibilityText &&
        homeScore == other.homeScore &&
        awayScore == other.awayScore &&
        person == other.person &&
        subPerson == other.subPerson &&
        banner == other.banner &&
        labels == other.labels &&
        media == other.media;
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
                                                        $jc($jc(0, id.hashCode),
                                                            eventType.hashCode),
                                                        eventTime.hashCode),
                                                    timeStamp.hashCode),
                                                eventOwningTeam.hashCode),
                                            title.hashCode),
                                        text.hashCode),
                                    accessibilityText.hashCode),
                                homeScore.hashCode),
                            awayScore.hashCode),
                        person.hashCode),
                    subPerson.hashCode),
                banner.hashCode),
            labels.hashCode),
        media.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MatchEvent')
          ..add('id', id)
          ..add('eventType', eventType)
          ..add('eventTime', eventTime)
          ..add('timeStamp', timeStamp)
          ..add('eventOwningTeam', eventOwningTeam)
          ..add('title', title)
          ..add('text', text)
          ..add('accessibilityText', accessibilityText)
          ..add('homeScore', homeScore)
          ..add('awayScore', awayScore)
          ..add('person', person)
          ..add('subPerson', subPerson)
          ..add('banner', banner)
          ..add('labels', labels)
          ..add('media', media))
        .toString();
  }
}

class MatchEventBuilder implements Builder<MatchEvent, MatchEventBuilder> {
  _$MatchEvent _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _eventType;
  String get eventType => _$this._eventType;
  set eventType(String eventType) => _$this._eventType = eventType;

  String _eventTime;
  String get eventTime => _$this._eventTime;
  set eventTime(String eventTime) => _$this._eventTime = eventTime;

  int _timeStamp;
  int get timeStamp => _$this._timeStamp;
  set timeStamp(int timeStamp) => _$this._timeStamp = timeStamp;

  EventOwningTeam _eventOwningTeam;
  EventOwningTeam get eventOwningTeam => _$this._eventOwningTeam;
  set eventOwningTeam(EventOwningTeam eventOwningTeam) =>
      _$this._eventOwningTeam = eventOwningTeam;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  String _accessibilityText;
  String get accessibilityText => _$this._accessibilityText;
  set accessibilityText(String accessibilityText) =>
      _$this._accessibilityText = accessibilityText;

  int _homeScore;
  int get homeScore => _$this._homeScore;
  set homeScore(int homeScore) => _$this._homeScore = homeScore;

  int _awayScore;
  int get awayScore => _$this._awayScore;
  set awayScore(int awayScore) => _$this._awayScore = awayScore;

  PersonBuilder _person;
  PersonBuilder get person => _$this._person ??= new PersonBuilder();
  set person(PersonBuilder person) => _$this._person = person;

  PersonBuilder _subPerson;
  PersonBuilder get subPerson => _$this._subPerson ??= new PersonBuilder();
  set subPerson(PersonBuilder subPerson) => _$this._subPerson = subPerson;

  BannerBuilder _banner;
  BannerBuilder get banner => _$this._banner ??= new BannerBuilder();
  set banner(BannerBuilder banner) => _$this._banner = banner;

  ListBuilder<String> _labels;
  ListBuilder<String> get labels =>
      _$this._labels ??= new ListBuilder<String>();
  set labels(ListBuilder<String> labels) => _$this._labels = labels;

  MediaBuilder _media;
  MediaBuilder get media => _$this._media ??= new MediaBuilder();
  set media(MediaBuilder media) => _$this._media = media;

  MatchEventBuilder();

  MatchEventBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _eventType = _$v.eventType;
      _eventTime = _$v.eventTime;
      _timeStamp = _$v.timeStamp;
      _eventOwningTeam = _$v.eventOwningTeam;
      _title = _$v.title;
      _text = _$v.text;
      _accessibilityText = _$v.accessibilityText;
      _homeScore = _$v.homeScore;
      _awayScore = _$v.awayScore;
      _person = _$v.person?.toBuilder();
      _subPerson = _$v.subPerson?.toBuilder();
      _banner = _$v.banner?.toBuilder();
      _labels = _$v.labels?.toBuilder();
      _media = _$v.media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MatchEvent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MatchEvent;
  }

  @override
  void update(void updates(MatchEventBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$MatchEvent build() {
    _$MatchEvent _$result;
    try {
      _$result = _$v ??
          new _$MatchEvent._(
              id: id,
              eventType: eventType,
              eventTime: eventTime,
              timeStamp: timeStamp,
              eventOwningTeam: eventOwningTeam,
              title: title,
              text: text,
              accessibilityText: accessibilityText,
              homeScore: homeScore,
              awayScore: awayScore,
              person: _person?.build(),
              subPerson: _subPerson?.build(),
              banner: _banner?.build(),
              labels: _labels?.build(),
              media: _media?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'person';
        _person?.build();
        _$failedField = 'subPerson';
        _subPerson?.build();
        _$failedField = 'banner';
        _banner?.build();
        _$failedField = 'labels';
        _labels?.build();
        _$failedField = 'media';
        _media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MatchEvent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

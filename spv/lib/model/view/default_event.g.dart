// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DefaultEvent> _$defaultEventSerializer =
    new _$DefaultEventSerializer();

class _$DefaultEventSerializer implements StructuredSerializer<DefaultEvent> {
  @override
  final Iterable<Type> types = const [DefaultEvent, _$DefaultEvent];
  @override
  final String wireName = 'DefaultEvent';

  @override
  Iterable serialize(Serializers serializers, DefaultEvent object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'score',
      serializers.serialize(object.score,
          specifiedType: const FullType(String)),
      'timeStamp',
      serializers.serialize(object.timeStamp,
          specifiedType: const FullType(String)),
      'icon',
      serializers.serialize(object.icon,
          specifiedType: const FullType(EventIconType)),
      'personName',
      serializers.serialize(object.personName,
          specifiedType: const FullType(String)),
      'isHomeTeam',
      serializers.serialize(object.isHomeTeam,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  DefaultEvent deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DefaultEventBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'timeStamp':
          result.timeStamp = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(EventIconType)) as EventIconType;
          break;
        case 'personName':
          result.personName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isHomeTeam':
          result.isHomeTeam = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$DefaultEvent extends DefaultEvent {
  @override
  final String score;
  @override
  final String timeStamp;
  @override
  final EventIconType icon;
  @override
  final String personName;
  @override
  final bool isHomeTeam;

  factory _$DefaultEvent([void updates(DefaultEventBuilder b)]) =>
      (new DefaultEventBuilder()..update(updates)).build();

  _$DefaultEvent._(
      {this.score, this.timeStamp, this.icon, this.personName, this.isHomeTeam})
      : super._() {
    if (score == null) {
      throw new BuiltValueNullFieldError('DefaultEvent', 'score');
    }
    if (timeStamp == null) {
      throw new BuiltValueNullFieldError('DefaultEvent', 'timeStamp');
    }
    if (icon == null) {
      throw new BuiltValueNullFieldError('DefaultEvent', 'icon');
    }
    if (personName == null) {
      throw new BuiltValueNullFieldError('DefaultEvent', 'personName');
    }
    if (isHomeTeam == null) {
      throw new BuiltValueNullFieldError('DefaultEvent', 'isHomeTeam');
    }
  }

  @override
  DefaultEvent rebuild(void updates(DefaultEventBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  DefaultEventBuilder toBuilder() => new DefaultEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DefaultEvent &&
        score == other.score &&
        timeStamp == other.timeStamp &&
        icon == other.icon &&
        personName == other.personName &&
        isHomeTeam == other.isHomeTeam;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, score.hashCode), timeStamp.hashCode), icon.hashCode),
            personName.hashCode),
        isHomeTeam.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DefaultEvent')
          ..add('score', score)
          ..add('timeStamp', timeStamp)
          ..add('icon', icon)
          ..add('personName', personName)
          ..add('isHomeTeam', isHomeTeam))
        .toString();
  }
}

class DefaultEventBuilder
    implements Builder<DefaultEvent, DefaultEventBuilder> {
  _$DefaultEvent _$v;

  String _score;
  String get score => _$this._score;
  set score(String score) => _$this._score = score;

  String _timeStamp;
  String get timeStamp => _$this._timeStamp;
  set timeStamp(String timeStamp) => _$this._timeStamp = timeStamp;

  EventIconType _icon;
  EventIconType get icon => _$this._icon;
  set icon(EventIconType icon) => _$this._icon = icon;

  String _personName;
  String get personName => _$this._personName;
  set personName(String personName) => _$this._personName = personName;

  bool _isHomeTeam;
  bool get isHomeTeam => _$this._isHomeTeam;
  set isHomeTeam(bool isHomeTeam) => _$this._isHomeTeam = isHomeTeam;

  DefaultEventBuilder();

  DefaultEventBuilder get _$this {
    if (_$v != null) {
      _score = _$v.score;
      _timeStamp = _$v.timeStamp;
      _icon = _$v.icon;
      _personName = _$v.personName;
      _isHomeTeam = _$v.isHomeTeam;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DefaultEvent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DefaultEvent;
  }

  @override
  void update(void updates(DefaultEventBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$DefaultEvent build() {
    final _$result = _$v ??
        new _$DefaultEvent._(
            score: score,
            timeStamp: timeStamp,
            icon: icon,
            personName: personName,
            isHomeTeam: isHomeTeam);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

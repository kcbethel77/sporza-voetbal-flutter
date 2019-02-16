// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EventType _$GOAL = const EventType._('GOAL');
const EventType _$OWN_GOAL = const EventType._('OWN_GOAL');
const EventType _$PENALTY_GOAL = const EventType._('PENALTY_GOAL');
const EventType _$PENALTY_MISSED = const EventType._('PENALTY_MISSED');
const EventType _$CORNER_GOAL = const EventType._('CORNER_GOAL');
const EventType _$FREE_KICK_GOAL = const EventType._('FREE_KICK_GOAL');
const EventType _$SHOOTOUT_SCORED = const EventType._('SHOOTOUT_SCORED');
const EventType _$SHOOTOUT_MISSED = const EventType._('SHOOTOUT_MISSED');
const EventType _$YELLOW_CARD = const EventType._('YELLOW_CARD');
const EventType _$SECOND_YELLOW_CARD = const EventType._('SECOND_YELLOW_CARD');
const EventType _$RED_CARD = const EventType._('RED_CARD');
const EventType _$SUBSTITUTION = const EventType._('SUBSTITUTION');
const EventType _$COMMENT = const EventType._('COMMENT');
const EventType _$COMMENT_GOAL = const EventType._('COMMENT_GOAL');
const EventType _$COMMENT_QUOTE = const EventType._('COMMENT_QUOTE');
const EventType _$PHASE = const EventType._('PHASE');
const EventType _$BANNER = const EventType._('BANNER');
const EventType _$VIDEO = const EventType._('VIDEO');
const EventType _$LIVESTREAM = const EventType._('LIVESTREAM');
const EventType _$INFO = const EventType._('INFO');

EventType _$valueOf(String name) {
  switch (name) {
    case 'GOAL':
      return _$GOAL;
    case 'OWN_GOAL':
      return _$OWN_GOAL;
    case 'PENALTY_GOAL':
      return _$PENALTY_GOAL;
    case 'PENALTY_MISSED':
      return _$PENALTY_MISSED;
    case 'CORNER_GOAL':
      return _$CORNER_GOAL;
    case 'FREE_KICK_GOAL':
      return _$FREE_KICK_GOAL;
    case 'SHOOTOUT_SCORED':
      return _$SHOOTOUT_SCORED;
    case 'SHOOTOUT_MISSED':
      return _$SHOOTOUT_MISSED;
    case 'YELLOW_CARD':
      return _$YELLOW_CARD;
    case 'SECOND_YELLOW_CARD':
      return _$SECOND_YELLOW_CARD;
    case 'RED_CARD':
      return _$RED_CARD;
    case 'SUBSTITUTION':
      return _$SUBSTITUTION;
    case 'COMMENT':
      return _$COMMENT;
    case 'COMMENT_GOAL':
      return _$COMMENT_GOAL;
    case 'COMMENT_QUOTE':
      return _$COMMENT_QUOTE;
    case 'PHASE':
      return _$PHASE;
    case 'BANNER':
      return _$BANNER;
    case 'VIDEO':
      return _$VIDEO;
    case 'LIVESTREAM':
      return _$LIVESTREAM;
    case 'INFO':
      return _$INFO;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<EventType> _$values = new BuiltSet<EventType>(const <EventType>[
  _$GOAL,
  _$OWN_GOAL,
  _$PENALTY_GOAL,
  _$PENALTY_MISSED,
  _$CORNER_GOAL,
  _$FREE_KICK_GOAL,
  _$SHOOTOUT_SCORED,
  _$SHOOTOUT_MISSED,
  _$YELLOW_CARD,
  _$SECOND_YELLOW_CARD,
  _$RED_CARD,
  _$SUBSTITUTION,
  _$COMMENT,
  _$COMMENT_GOAL,
  _$COMMENT_QUOTE,
  _$PHASE,
  _$BANNER,
  _$VIDEO,
  _$LIVESTREAM,
  _$INFO,
]);

Serializer<EventType> _$eventTypeSerializer = new _$EventTypeSerializer();

class _$EventTypeSerializer implements PrimitiveSerializer<EventType> {
  @override
  final Iterable<Type> types = const <Type>[EventType];
  @override
  final String wireName = 'EventType';

  @override
  Object serialize(Serializers serializers, EventType object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  EventType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      EventType.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

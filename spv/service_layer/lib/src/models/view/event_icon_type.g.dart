// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_icon_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EventIconType _$GOAL = const EventIconType._('GOAL');
const EventIconType _$OWN_GOAL = const EventIconType._('OWN_GOAL');
const EventIconType _$PENALTY_GOAL = const EventIconType._('PENALTY_GOAL');
const EventIconType _$PENALTY_MISSED = const EventIconType._('PENALTY_MISSED');
const EventIconType _$CORNER_GOAL = const EventIconType._('CORNER_GOAL');
const EventIconType _$FREE_KICK_GOAL = const EventIconType._('FREE_KICK_GOAL');
const EventIconType _$SHOOTOUT_SCORED =
    const EventIconType._('SHOOTOUT_SCORED');
const EventIconType _$SHOOTOUT_MISSED =
    const EventIconType._('SHOOTOUT_MISSED');
const EventIconType _$YELLOW_CARD = const EventIconType._('YELLOW_CARD');
const EventIconType _$SECOND_YELLOW_CARD =
    const EventIconType._('SECOND_YELLOW_CARD');
const EventIconType _$RED_CARD = const EventIconType._('RED_CARD');
const EventIconType _$SUBSTITUTION = const EventIconType._('SUBSTITUTION');

EventIconType _$valueOf(String name) {
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
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<EventIconType> _$values =
    new BuiltSet<EventIconType>(const <EventIconType>[
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
]);

Serializer<EventIconType> _$eventIconTypeSerializer =
    new _$EventIconTypeSerializer();

class _$EventIconTypeSerializer implements PrimitiveSerializer<EventIconType> {
  @override
  final Iterable<Type> types = const <Type>[EventIconType];
  @override
  final String wireName = 'EventIconType';

  @override
  Object serialize(Serializers serializers, EventIconType object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  EventIconType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      EventIconType.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

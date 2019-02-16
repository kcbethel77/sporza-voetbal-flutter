// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_owning_team.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EventOwningTeam _$NEUTRAL = const EventOwningTeam._('NEUTRAL');
const EventOwningTeam _$HOME = const EventOwningTeam._('HOME');
const EventOwningTeam _$AWAY = const EventOwningTeam._('AWAY');

EventOwningTeam _$valueOf(String name) {
  switch (name) {
    case 'NEUTRAL':
      return _$NEUTRAL;
    case 'HOME':
      return _$HOME;
    case 'AWAY':
      return _$AWAY;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<EventOwningTeam> _$values =
    new BuiltSet<EventOwningTeam>(const <EventOwningTeam>[
  _$NEUTRAL,
  _$HOME,
  _$AWAY,
]);

Serializer<EventOwningTeam> _$eventOwningTeamSerializer =
    new _$EventOwningTeamSerializer();

class _$EventOwningTeamSerializer
    implements PrimitiveSerializer<EventOwningTeam> {
  @override
  final Iterable<Type> types = const <Type>[EventOwningTeam];
  @override
  final String wireName = 'EventOwningTeam';

  @override
  Object serialize(Serializers serializers, EventOwningTeam object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  EventOwningTeam deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      EventOwningTeam.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

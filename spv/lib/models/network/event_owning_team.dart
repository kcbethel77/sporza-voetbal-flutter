import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'event_owning_team.g.dart';

class EventOwningTeam extends EnumClass {
  static Serializer<EventOwningTeam> get serializer => _$eventOwningTeamSerializer;

  static const EventOwningTeam NEUTRAL = _$NEUTRAL;
  static const EventOwningTeam HOME = _$HOME;
  static const EventOwningTeam AWAY = _$AWAY;

  const EventOwningTeam._(String name) : super(name);

  static BuiltSet<EventOwningTeam> get values => _$values;

  static EventOwningTeam valueOf(String name) => _$valueOf(name);
}

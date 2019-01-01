import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'event_type.g.dart';

class EventType extends EnumClass {
  static Serializer<EventType> get serializer => _$eventTypeSerializer;
  
  static const EventType GOAL = _$GOAL;
  static const EventType OWN_GOAL = _$OWN_GOAL;
  static const EventType PENALTY_GOAL = _$PENALTY_GOAL;
  static const EventType PENALTY_MISSED = _$PENALTY_MISSED;
  static const EventType CORNER_GOAL = _$CORNER_GOAL;
  static const EventType FREE_KICK_GOAL = _$FREE_KICK_GOAL;
  static const EventType SHOOTOUT_SCORED = _$SHOOTOUT_SCORED;
  static const EventType SHOOTOUT_MISSED = _$SHOOTOUT_MISSED;
  static const EventType YELLOW_CARD = _$YELLOW_CARD;
  static const EventType SECOND_YELLOW_CARD = _$SECOND_YELLOW_CARD;
  static const EventType RED_CARD = _$RED_CARD;
  static const EventType SUBSTITUTION = _$SUBSTITUTION;

  static const EventType COMMENT = _$COMMENT;
  static const EventType COMMENT_GOAL = _$COMMENT_GOAL;

  static const EventType COMMENT_QUOTE = _$COMMENT_QUOTE;

  static const EventType PHASE = _$PHASE;

  static const EventType BANNER = _$BANNER;

  static const EventType VIDEO = _$VIDEO;

  static const EventType LIVESTREAM = _$LIVESTREAM;

  static const EventType INFO = _$INFO;


  const EventType._(String name) : super(name);
  
  static BuiltSet<EventType> get values => _$values;
  
  static EventType valueOf(String name) => _$valueOf(name);
}

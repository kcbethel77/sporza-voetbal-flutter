import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'event_icon_type.g.dart';

class EventIconType extends EnumClass {
  static Serializer<EventIconType> get serializer => _$eventIconTypeSerializer;

  static const EventIconType GOAL = _$GOAL;
  static const EventIconType OWN_GOAL = _$OWN_GOAL ;
  static const EventIconType PENALTY_GOAL = _$PENALTY_GOAL ;
  static const EventIconType PENALTY_MISSED = _$PENALTY_MISSED ;
  static const EventIconType CORNER_GOAL = _$CORNER_GOAL ;
  static const EventIconType FREE_KICK_GOAL = _$FREE_KICK_GOAL ;
  static const EventIconType SHOOTOUT_SCORED = _$SHOOTOUT_SCORED ;
  static const EventIconType SHOOTOUT_MISSED = _$SHOOTOUT_MISSED ;
  static const EventIconType YELLOW_CARD = _$YELLOW_CARD ;
  static const EventIconType SECOND_YELLOW_CARD = _$SECOND_YELLOW_CARD ;
  static const EventIconType RED_CARD = _$RED_CARD ;
  static const EventIconType SUBSTITUTION = _$SUBSTITUTION ;

  const EventIconType._(String name) : super(name);

  static BuiltSet<EventIconType> get values => _$values;

  static EventIconType valueOf(String name) => _$valueOf(name);
}

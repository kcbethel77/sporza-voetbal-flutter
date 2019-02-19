import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

import 'package:spv/model/network/network_models.dart';

part 'match_event.g.dart';

abstract class MatchEvent implements Built<MatchEvent, MatchEventBuilder> {
  static Serializer<MatchEvent> get serializer => _$matchEventSerializer;

  MatchEvent._();

  String get id;

  String get eventType; //this is a string on purpose we filter out event types that are unknown to us.

  @nullable
  String get eventTime;

  @nullable
  @BuiltValueField(wireName: "timestamp")
  int get timeStamp;

  EventOwningTeam get eventOwningTeam;

  @nullable
  String get title;

  @nullable
  String get text;

  @nullable
  String get accessibilityText;

  @nullable
  int get homeScore;

  @nullable
  int get awayScore;

  @nullable
  Person get person;

  @nullable
  Person get subPerson;

  @nullable
  Banner get banner;

  @nullable
  BuiltList<String> get labels;

  @nullable
  Media get media;

  factory MatchEvent([updates(MatchEventBuilder b)]) = _$MatchEvent;
}

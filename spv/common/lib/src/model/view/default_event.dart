import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:common_spv/src/model/view/view_models.dart';

part 'package:common_spv/src/model/view/default_event.g.dart';

abstract class DefaultEvent extends Event implements Built<DefaultEvent, DefaultEventBuilder> {
  static Serializer<DefaultEvent> get serializer => _$defaultEventSerializer;

  DefaultEvent._();

  String get score;

  String get timeStamp;

  EventIconType get icon;

  String get personName;

  bool get isHomeTeam;

  factory DefaultEvent([updates(DefaultEventBuilder b)]) = _$DefaultEvent;
}

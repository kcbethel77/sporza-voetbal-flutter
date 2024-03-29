import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:spv/model/view/view_models.dart';

part 'info_event.g.dart';

abstract class InfoEvent extends Event implements Built<InfoEvent, InfoEventBuilder> {
  static Serializer<InfoEvent> get serializer => _$infoEventSerializer;

  InfoEvent._();

  String get info;

  factory InfoEvent([updates(InfoEventBuilder b)]) = _$InfoEvent;
}

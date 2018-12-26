import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:spv/models/view/view_models.dart';

part 'phase_event.g.dart';

abstract class PhaseEvent extends Event implements Built<PhaseEvent, PhaseEventBuilder> {
  static Serializer<PhaseEvent> get serializer => _$phaseEventSerializer;

  PhaseEvent._();

  String get name;

  factory PhaseEvent([updates(PhaseEventBuilder b)]) = _$PhaseEvent;
}

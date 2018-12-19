import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:spv/models/network/network_models.dart';

part 'phase.g.dart';

abstract class Phase implements Built<Phase, PhaseBuilder> {
  static Serializer<Phase> get serializer => _$phaseSerializer;

  Phase._();

  String get id;

  String get label;

  String get labelShort;

  String get currentMatchDay;

  int get currentMatchDayIndex;

  BuiltList<MatchDay> get matchDays;

  factory Phase([updates(PhaseBuilder b)]) = _$Phase;
}

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

import 'package:spv/model/network/network_models.dart';

part 'phase.g.dart';

abstract class Phase implements Built<Phase, PhaseBuilder> {
  static Serializer<Phase> get serializer => _$phaseSerializer;

  Phase._();

  String get id;

  String get label;

  String get labelShort;

  @nullable
  String get currentMatchDay;

  @nullable
  int get currentMatchDayIndex;

  @nullable
  BuiltList<MatchDay> get matchDays;

  @nullable
  BuiltList<Ranking> get ranking;

  factory Phase([updates(PhaseBuilder b)]) = _$Phase;
}

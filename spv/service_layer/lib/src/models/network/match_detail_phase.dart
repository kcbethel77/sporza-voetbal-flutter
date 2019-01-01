import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'match_detail_phase.g.dart';

abstract class MatchDetailPhase implements Built<MatchDetailPhase, MatchDetailPhaseBuilder> {
  static Serializer<MatchDetailPhase> get serializer => _$matchDetailPhaseSerializer;

  MatchDetailPhase._();

  String get label;

  factory MatchDetailPhase([updates(MatchDetailPhaseBuilder b)]) = _$MatchDetailPhase;
}

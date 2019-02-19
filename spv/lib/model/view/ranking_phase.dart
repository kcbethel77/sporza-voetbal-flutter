import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:spv/model/view/view_models.dart';

part 'ranking_phase.g.dart';

abstract class RankingPhase implements Built<RankingPhase, RankingPhaseBuilder> {
  static Serializer<RankingPhase> get serializer => _$rankingPhaseSerializer;

  RankingPhase._();

  bool get isCurrent;

  String get name;

  BuiltList<Rank> get rankings;

  factory RankingPhase([updates(RankingPhaseBuilder b)]) = _$RankingPhase;
}

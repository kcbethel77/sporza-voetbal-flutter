import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:common_spv/src/model/view/view_models.dart';

part 'package:common_spv/src/model/view/ranking.g.dart';

abstract class Ranking implements Built<Ranking, RankingBuilder> {
  static Serializer<Ranking> get serializer => _$rankingSerializer;

  Ranking._();

  String get competitionTitle;

  BuiltList<RankingPhase> get phases;

  factory Ranking([updates(RankingBuilder b)]) = _$Ranking;
}

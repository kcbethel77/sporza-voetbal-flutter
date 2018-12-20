import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:spv/models/network/network_models.dart';

part 'ranking.g.dart';

abstract class Ranking implements Built<Ranking, RankingBuilder> {
  static Serializer<Ranking> get serializer => _$rankingSerializer;

  Ranking._();

  String get id;

  int get rank;

  Team get team;

  int get nrOfMatches;

  int get points;

  String get accessibilityText;

  factory Ranking([updates(RankingBuilder b)]) = _$Ranking;
}

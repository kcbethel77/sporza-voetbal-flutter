import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'match_detail_competition.g.dart';

abstract class MatchDetailCompetition implements Built<MatchDetailCompetition, MatchDetailCompetitionBuilder> {
  static Serializer<MatchDetailCompetition> get serializer => _$matchDetailCompetitionSerializer;

  MatchDetailCompetition._();

  String get label;

  factory MatchDetailCompetition([updates(MatchDetailCompetitionBuilder b)]) = _$MatchDetailCompetition;
}

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'match_detail_match_day.g.dart';

abstract class MatchDetailMatchDay implements Built<MatchDetailMatchDay, MatchDetailMatchDayBuilder> {
  static Serializer<MatchDetailMatchDay> get serializer => _$matchDetailMatchDaySerializer;

  MatchDetailMatchDay._();

  String get name;

  factory MatchDetailMatchDay([updates(MatchDetailMatchDayBuilder b)]) = _$MatchDetailMatchDay;
}

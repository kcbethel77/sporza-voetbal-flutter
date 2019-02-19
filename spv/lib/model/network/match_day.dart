import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:spv/model/network/network_models.dart';

part 'match_day.g.dart';

abstract class MatchDay implements Built<MatchDay, MatchDayBuilder> {
  static Serializer<MatchDay> get serializer => _$matchDaySerializer;

  MatchDay._();

  String get id;

  String get name;

  String get accessibilityText;

  BuiltList<Match> get matches;

  factory MatchDay([updates(MatchDayBuilder b)]) = _$MatchDay;
}

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:common_spv/src/model/view/view_models.dart';
import 'package:common_spv/src/model/view/accessible.dart';

part 'package:common_spv/src/model/view/match_day.g.dart';

abstract class MatchDay
    implements Built<MatchDay, MatchDayBuilder>, Accessible {
  static Serializer<MatchDay> get serializer => _$matchDaySerializer;

  MatchDay._();

  String get name;

  bool get isCurrent;

  BuiltList<Match> get matches;

  factory MatchDay([updates(MatchDayBuilder b)]) = _$MatchDay;
}

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'package:spv/model/view/accessible.dart';
import 'package:spv/model/view/id.dart';

import 'package:spv/model/view/view_models.dart';
import 'package:spv/model/common/common_models.dart';

part 'match.g.dart';

abstract class Match implements Built<Match, MatchBuilder>, Id, Accessible {
  static Serializer<Match> get serializer => _$matchSerializer;

  Match._();

  Team get homeTeam;

  Team get awayTeam;

  @nullable
  String get startTime;

  MatchStatus get status;

  int get homeScore;

  int get awayScore;

  bool get isKnockout;

  HeadingInfo get info;

  factory Match([updates(MatchBuilder b)]) = _$Match;
}

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:spv/models/view/view_models.dart';
import 'package:spv/models/view/id.dart';
import 'package:spv/models/view/accessible.dart';

part 'match.g.dart';

abstract class Match implements Built<Match, MatchBuilder>, Id, Accessible {
  static Serializer<Match> get serializer => _$matchSerializer;

  Match._();

  Team get homeTeam;

  Team get awayTeam;

  String get startTime;

  //TODO: Convert me to an Enum
  String get status;

  bool get isKnockout;

  factory Match([updates(MatchBuilder b)]) = _$Match;
}

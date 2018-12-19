import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:spv/models/network/network_models.dart';

part 'match.g.dart';

abstract class Match implements Built<Match, MatchBuilder> {
  static Serializer<Match> get serializer => _$matchSerializer;

  Match._();

  String get id;

  Team get homeTeam;

  Team get awayTeam;

  String get startTime;

  String get status;

  int get homeScore;

  int get awayScore;

  String get statusName;

  String get statusLabel;

  String get accessibilityText;

  bool get isKnockout;

  factory Match([updates(MatchBuilder b)]) = _$Match;
}

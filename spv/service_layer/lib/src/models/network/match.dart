import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:service_layer_spv/src/models/network/network_models.dart';
import 'package:common_spv/common.dart' as common;

part 'match.g.dart';

abstract class Match implements Built<Match, MatchBuilder> {
  static Serializer<Match> get serializer => _$matchSerializer;

  Match._();

  String get id;

  Team get homeTeam;

  Team get awayTeam;

  @nullable
  String get startTime;

  common.MatchStatus get status;

  int get homeScore;

  int get awayScore;

  String get statusName;

  @nullable
  String get statusLabel;

  String get accessibilityText;

  bool get isKnockout;

  factory Match([updates(MatchBuilder b)]) = _$Match;
}

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:service_layer_spv/src/models/network/network_models.dart';
import 'package:common_spv/common.dart' as common;

part 'match_detail.g.dart';

abstract class MatchDetail implements Built<MatchDetail, MatchDetailBuilder> {
  static Serializer<MatchDetail> get serializer => _$matchDetailSerializer;

  MatchDetail._();

  String get id;

  MatchDetailCompetition get competition;

  MatchDetailPhase get phase;

  MatchDetailMatchDay get matchDay;

  Team get homeTeam;

  Team get awayTeam;

  String get startTime;

  common.MatchStatus get status;

  int get homeScore;

  int get awayScore;

  String get statusName;

  String get statusLabel;

  String get accessibilityText;

  bool get isKnockout;

  @nullable
  String get stadium;

  @nullable
  String get referee;

  @nullable
  int get spectators;

  @nullable
  String get knockoutEnd;

  @nullable
  String get statusDay;

  @nullable
  String get statusDate;

  BuiltList<MatchEvent> get eventList;

  factory MatchDetail([updates(MatchDetailBuilder b)]) = _$MatchDetail;
}

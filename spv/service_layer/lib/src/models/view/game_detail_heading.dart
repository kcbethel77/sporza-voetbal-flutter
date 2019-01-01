import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:service_layer_spv/src/models/view/view_models.dart';

part 'game_detail_heading.g.dart';

abstract class GameDetailHeading implements Built<GameDetailHeading, GameDetailHeadingBuilder> {
  static Serializer<GameDetailHeading> get serializer => _$gameDetailHeadingSerializer;

  GameDetailHeading._();

  String get competitionTitle;

  Team get homeTeam;

  Team get awayTeam;

  HeadingInfo get info;

  factory GameDetailHeading([updates(GameDetailHeadingBuilder b)]) = _$GameDetailHeading;
}
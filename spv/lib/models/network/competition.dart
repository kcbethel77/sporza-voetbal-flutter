import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'competition.g.dart';

abstract class Competition implements Built<Competition, CompetitionBuilder> {
  static Serializer<Competition> get serializer => _$competitionSerializer;

  Competition._();

  String get id;

  String get country;

  String get countryShort;

  String get label;

  int get position;

  String get accessibilityText;

  @nullable
  String get defaultPhase;

  bool get canSelectFavourites;

  bool get hasRanking;

  bool get sporzaFeatured;

  bool get additionalInfo;

  factory Competition([updates(CompetitionBuilder b)]) = _$Competition;
}

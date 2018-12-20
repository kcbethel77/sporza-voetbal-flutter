import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:spv/models/network/network_models.dart';

part 'competition.g.dart';

abstract class Competition implements Built<Competition, CompetitionBuilder> {
  static Serializer<Competition> get serializer => _$competitionSerializer;

  Competition._();

  String get id;

  String get country;

  String get countryShort;

  String get label;

  @nullable
  int get position;

  String get accessibilityText;

  @nullable
  String get defaultPhase;

  @nullable
  bool get canSelectFavourites;

  @nullable
  BuiltList<Phase> get phases;

  @nullable
  BuiltList<Ranking> get ranking;

  bool get hasRanking;

  @nullable
  bool get sporzaFeatured;

  @nullable
  bool get additionalInfo;

  factory Competition([updates(CompetitionBuilder b)]) = _$Competition;
}

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:common_spv/src/model/view/id.dart';

part 'package:common_spv/src/model/view/team.g.dart';

abstract class Team implements Built<Team, TeamBuilder>, Id {
  static Serializer<Team> get serializer => _$teamSerializer;

  Team._();

  String get name;

  String get iconUrl;

  bool get isFavorite;

  bool get canBeFavourite;

  factory Team([updates(TeamBuilder b)]) = _$Team;
}

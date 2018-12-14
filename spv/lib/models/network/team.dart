import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'team.g.dart';

abstract class Team implements Built<Team, TeamBuilder> {
  static Serializer<Team> get serializer => _$teamSerializer;

  Team._();

  String get id;

  String get name;

  String get logoUrl;

  String get countryShort;

  BuiltList<String> get competitionIds;

  bool get canSelectAsFavourite;

  factory Team([updates(TeamBuilder b)]) = _$Team;
}

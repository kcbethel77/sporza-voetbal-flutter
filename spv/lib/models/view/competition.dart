import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:spv/models/view/accessibile.dart';
import 'package:spv/models/view/id.dart';

part 'competition.g.dart';

abstract class Competition implements Built<Competition, CompetitionBuilder>, Id, Accessible {
  static Serializer<Competition> get serializer => _$competitionSerializer;

  Competition._();

  String get name;

  String get abbreviation;

  factory Competition([updates(CompetitionBuilder b)]) = _$Competition;
}

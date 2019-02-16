import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:common_spv/src/model/view/accessible.dart';
import 'package:common_spv/src/model/view/id.dart';

part 'package:common_spv/src/model/view/competition.g.dart';

abstract class Competition implements Built<Competition, CompetitionBuilder>, Id, Accessible {
  static Serializer<Competition> get serializer => _$competitionSerializer;

  Competition._();

  String get name;

  String get abbreviation;

  factory Competition([updates(CompetitionBuilder b)]) = _$Competition;
}

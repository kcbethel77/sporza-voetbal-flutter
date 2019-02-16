import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:common_spv/src/model/view/accessible.dart';
import 'package:common_spv/src/model/view/id.dart';

part 'package:common_spv/src/model/view/rank.g.dart';

abstract class Rank implements Built<Rank, RankBuilder>, Id, Accessible {
  static Serializer<Rank> get serializer => _$rankSerializer;

  Rank._();

  String get name;

  String get iconUrl;

  int get position;

  int get matchedPlayed;

  int get points;

  factory Rank([updates(RankBuilder b)]) = _$Rank;
}

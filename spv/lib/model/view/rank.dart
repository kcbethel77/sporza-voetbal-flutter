import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:spv/model/view/accessible.dart';
import 'package:spv/model/view/id.dart';

part 'rank.g.dart';

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

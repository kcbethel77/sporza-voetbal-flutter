import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:spv/models/network/network_models.dart';
import 'package:spv/models/common/common.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  News,
  Video,
  Team,
  Competition,
  Phase,
  MatchDay,
  Match,
  MatchStatus,
  Ranking,
  MatchDetail,
  MatchDetailCompetition,
  MatchDetailMatchDay,
  MatchDetailPhase,
  Person,
  MatchEvent,
  EventOwningTeam,
  Banner,
  Media
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:spv/models/network/network_models.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  News,
  Video,
  Team,
  MediaType,
  Competition,
  Phase,
  MatchDay,
  Match,
  Ranking,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

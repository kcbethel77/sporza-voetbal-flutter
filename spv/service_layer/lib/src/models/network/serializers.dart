import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:service_layer_spv/src/models/network/network_models.dart';
import 'package:common_spv/common.dart' as common;

part 'serializers.g.dart';

@SerializersFor(const [])
final Serializers serializers = (_$serializers.toBuilder()
      ..add(Banner.serializer)
      ..add(common.BannerFormat.serializer)
      ..add(Competition.serializer)
      ..add(EventOwningTeam.serializer)
      ..add(Link.serializer)
      ..add(Match.serializer)
      ..add(MatchDay.serializer)
      ..add(MatchDetail.serializer)
      ..add(MatchDetailCompetition.serializer)
      ..add(MatchDetailMatchDay.serializer)
      ..add(MatchDetailPhase.serializer)
      ..add(MatchEvent.serializer)
      ..add(common.MatchStatus.serializer)
      ..add(Media.serializer)
      ..add(common.MediaType.serializer)
      ..add(News.serializer)
      ..add(Person.serializer)
      ..add(Phase.serializer)
      ..add(Ranking.serializer)
      ..add(Team.serializer)
      ..add(Video.serializer)
      ..add(VideoLink.serializer)
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(Link)]), () => new ListBuilder<Link>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(Link)]), () => new ListBuilder<Link>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(Link)]), () => new ListBuilder<Link>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(Link)]), () => new ListBuilder<Link>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(VideoLink)]), () => new ListBuilder<VideoLink>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(Match)]), () => new ListBuilder<Match>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(MatchDay)]), () => new ListBuilder<MatchDay>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(Ranking)]), () => new ListBuilder<Ranking>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(MatchEvent)]), () => new ListBuilder<MatchEvent>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(Phase)]), () => new ListBuilder<Phase>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addPlugin(StandardJsonPlugin()))
    .build();

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:spv/models/network/news.dart';
import 'package:spv/models/network/link.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  News,
  Link
])
final Serializers serializers = (_$serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin()))
    .build();

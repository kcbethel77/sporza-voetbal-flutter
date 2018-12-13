import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'link.g.dart';

abstract class Link implements Built<Link, LinkBuilder> {
  static Serializer<Link> get serializer => _$linkSerializer;

  Link._();

  String get id;

  String get rel;

  String get url;

  factory Link([updates(LinkBuilder b)]) = _$Link;
}

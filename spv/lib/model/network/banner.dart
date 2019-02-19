import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:spv/model/common/common_models.dart';

part 'banner.g.dart';

abstract class Banner implements Built<Banner, BannerBuilder> {
  static Serializer<Banner> get serializer => _$bannerSerializer;

  Banner._();

  String get id;

  BannerFormat get format;

  String get pebblePhoneUrl;

  String get pebbleTabletUrl;

  factory Banner([updates(BannerBuilder b)]) = _$Banner;
}

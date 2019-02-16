import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'banner_format.g.dart';

class BannerFormat extends EnumClass {
  static Serializer<BannerFormat> get serializer => _$bannerFormatSerializer;

  static const BannerFormat IMU = _$IMU;
  static const BannerFormat LEADERBOARD = _$LEADERBOARD;

  const BannerFormat._(String name) : super(name);

  static BuiltSet<BannerFormat> get values => _$values;

  static BannerFormat valueOf(String name) => _$valueOf(name);
}

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:common_spv/src/model/view/view_models.dart';

part 'package:common_spv/src/model/view/live_match_heading_info.g.dart';

abstract class LiveMatchHeadingInfo extends HeadingInfo implements Built<LiveMatchHeadingInfo, LiveMatchHeadingInfoBuilder> {
  static Serializer<LiveMatchHeadingInfo> get serializer => _$liveMatchHeadingInfoSerializer;

  LiveMatchHeadingInfo._();

  String get score;

  String get statusLabel;

  factory LiveMatchHeadingInfo([updates(LiveMatchHeadingInfoBuilder b)]) = _$LiveMatchHeadingInfo;
}

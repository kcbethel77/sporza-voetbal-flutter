import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:spv/models/view/view_models.dart';

part 'after_today_heading_info.g.dart';

abstract class AfterTodayHeadingInfo extends HeadingInfo implements Built<AfterTodayHeadingInfo,
    AfterTodayHeadingInfoBuilder> {
  static Serializer<AfterTodayHeadingInfo> get serializer => _$afterTodayHeadingInfoSerializer;

  AfterTodayHeadingInfo._();

  String get statusDay;

  String get statusDate;

  String get statusLabel;

  factory AfterTodayHeadingInfo([updates(AfterTodayHeadingInfoBuilder b)]) = _$AfterTodayHeadingInfo;
}

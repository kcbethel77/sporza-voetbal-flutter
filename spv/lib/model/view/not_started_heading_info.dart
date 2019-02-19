import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'package:spv/model/view/view_models.dart';

part 'not_started_heading_info.g.dart';

abstract class NotStartedHeadingInfo extends HeadingInfo implements Built<NotStartedHeadingInfo, NotStartedHeadingInfoBuilder> {
  static Serializer<NotStartedHeadingInfo> get serializer => _$notStartedHeadingInfoSerializer;

  NotStartedHeadingInfo._();

  String get statusDay;

  String get statusLabel;

  factory NotStartedHeadingInfo([updates(NotStartedHeadingInfoBuilder b)]) = _$NotStartedHeadingInfo;
}

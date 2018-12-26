import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:spv/models/view/view_models.dart';

part 'suspended_heading_info.g.dart';

abstract class SuspendedHeadingInfo extends HeadingInfo
    implements Built<SuspendedHeadingInfo, SuspendedHeadingInfoBuilder> {
  static Serializer<SuspendedHeadingInfo> get serializer =>
      _$suspendedHeadingInfoSerializer;

  SuspendedHeadingInfo._();

  String get statusLabel;

  String get score;

  factory SuspendedHeadingInfo([updates(SuspendedHeadingInfoBuilder b)]) =
      _$SuspendedHeadingInfo;
}

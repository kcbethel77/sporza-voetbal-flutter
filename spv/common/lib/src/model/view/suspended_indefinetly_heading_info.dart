import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:common_spv/src/model/view/view_models.dart';

part 'package:common_spv/src/model/view/suspended_indefinetly_heading_info.g.dart';

abstract class SuspendedIndefinitelyHeadingInfo extends HeadingInfo
    implements Built<SuspendedIndefinitelyHeadingInfo, SuspendedIndefinitelyHeadingInfoBuilder> {
  static Serializer<SuspendedIndefinitelyHeadingInfo> get serializer => _$suspendedIndefinitelyHeadingInfoSerializer;

  SuspendedIndefinitelyHeadingInfo._();

  String get statusLabel;

  String get score;

  factory SuspendedIndefinitelyHeadingInfo([updates(SuspendedIndefinitelyHeadingInfoBuilder b)]) =
      _$SuspendedIndefinitelyHeadingInfo;
}

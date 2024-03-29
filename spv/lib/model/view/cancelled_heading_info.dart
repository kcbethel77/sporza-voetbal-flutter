import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:spv/model/view/view_models.dart';

part 'cancelled_heading_info.g.dart';

abstract class CancelledHeadingInfo extends HeadingInfo implements Built<CancelledHeadingInfo, CancelledHeadingInfoBuilder> {
  static Serializer<CancelledHeadingInfo> get serializer => _$cancelledHeadingInfoSerializer;

  CancelledHeadingInfo._();

  String get statusLabel;

  factory CancelledHeadingInfo([updates(CancelledHeadingInfoBuilder b)]) = _$CancelledHeadingInfo;
}

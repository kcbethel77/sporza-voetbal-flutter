import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:spv/model/view/view_models.dart';

part 'default_heading_info.g.dart';

abstract class DefaultHeadingInfo extends HeadingInfo implements Built<DefaultHeadingInfo, DefaultHeadingInfoBuilder> {
  static Serializer<DefaultHeadingInfo> get serializer => _$defaultHeadingInfoSerializer;

  DefaultHeadingInfo._();

  factory DefaultHeadingInfo([updates(DefaultHeadingInfoBuilder b)]) = _$DefaultHeadingInfo;
}

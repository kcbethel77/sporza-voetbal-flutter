import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:common_spv/src/model/view/view_models.dart';

part 'package:common_spv/src/model/view/postponed_heading_info.g.dart';

abstract class PostponedHeadingInfo extends HeadingInfo
    implements Built<PostponedHeadingInfo, PostponedHeadingInfoBuilder> {
  static Serializer<PostponedHeadingInfo> get serializer => _$postponedHeadingInfoSerializer;

  PostponedHeadingInfo._();

  String get statusLabel;

  factory PostponedHeadingInfo([updates(PostponedHeadingInfoBuilder b)]) = _$PostponedHeadingInfo;
}

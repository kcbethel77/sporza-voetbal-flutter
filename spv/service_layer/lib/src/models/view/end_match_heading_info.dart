import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:service_layer_spv/src/models/view/view_models.dart';

part 'end_match_heading_info.g.dart';

abstract class EndMatchHeadingInfo extends HeadingInfo implements Built<EndMatchHeadingInfo, EndMatchHeadingInfoBuilder> {
  static Serializer<EndMatchHeadingInfo> get serializer => _$endMatchHeadingInfoSerializer;

  EndMatchHeadingInfo._();

  String get score;

  @nullable
  String get knockoutEnd;

  String get statusLabel;

  factory EndMatchHeadingInfo([updates(EndMatchHeadingInfoBuilder b)]) = _$EndMatchHeadingInfo;
}

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'package:spv/model/common/common_models.dart';

part 'video_link.g.dart';

abstract class VideoLink implements Built<VideoLink, VideoLinkBuilder> {
  static Serializer<VideoLink> get serializer => _$videoLinkSerializer;

  VideoLink._();

  String get id;

  String get publicationId;

  String get url;

  MediaType get mediaType;

  String get adDomain;

  String get adPartner;

  String get adContent;

  String get adCategory;

  String get adLocation;

  String get adConsent;

  factory VideoLink([updates(VideoLinkBuilder b)]) = _$VideoLink;
}

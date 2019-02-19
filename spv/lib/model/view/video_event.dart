import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'package:spv/model/view/view_models.dart';
import 'package:spv/model/common/common_models.dart';

part 'video_event.g.dart';

abstract class VideoEvent extends Event implements Built<VideoEvent, VideoEventBuilder> {
  static Serializer<VideoEvent> get serializer => _$videoEventSerializer;

  VideoEvent._();

  String get videoId;

  @nullable
  String get title;

  @nullable
  String get imageUrl;

  MediaType get mediaType;

  factory VideoEvent([updates(VideoEventBuilder b)]) = _$VideoEvent;
}

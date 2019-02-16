import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:common_spv/src/model/view/view_models.dart';
import 'package:common_spv/common.dart';

part 'package:common_spv/src/model/view/video_event.g.dart';

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

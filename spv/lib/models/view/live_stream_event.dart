import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:spv/models/view/view_models.dart';
import 'package:spv/models/common/common.dart';

part 'live_stream_event.g.dart';

abstract class LiveStreamEvent extends Event implements Built<LiveStreamEvent, LiveStreamEventBuilder> {
  static Serializer<LiveStreamEvent> get serializer => _$liveStreamEventSerializer;

  LiveStreamEvent._();

  String get liveStreamId;

  String get title;

  String get url;

  MediaType get mediaType;

  String get adContent;

  String get adLocation;

  String get adCategory;

  String get adConsent;

  factory LiveStreamEvent([updates(LiveStreamEventBuilder b)]) = _$LiveStreamEvent;
}

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:spv/model/view/view_models.dart';

part 'comment_event.g.dart';

abstract class CommentEvent extends Event implements Built<CommentEvent, CommentEventBuilder> {
  static Serializer<CommentEvent> get serializer => _$commentEventSerializer;

  CommentEvent._();

  @nullable
  String get title;

  String get text;

  String get timeStamp;

  factory CommentEvent([updates(CommentEventBuilder b)]) = _$CommentEvent;
}

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:spv/models/view/view_models.dart';

part 'comment_quote_event.g.dart';

abstract class CommentQuoteEvent extends Event implements Built<CommentQuoteEvent, CommentQuoteEventBuilder> {
  static Serializer<CommentQuoteEvent> get serializer => _$commentQuoteEventSerializer;

  CommentQuoteEvent._();

  String get quote;

  String get author;

  String get timeStamp;

  factory CommentQuoteEvent([updates(CommentQuoteEventBuilder b)]) = _$CommentQuoteEvent;
}

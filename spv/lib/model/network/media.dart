import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'package:spv/model/common/common_models.dart';

part 'media.g.dart';

abstract class Media implements Built<Media, MediaBuilder> {
  static Serializer<Media> get serializer => _$mediaSerializer;

  Media._();

  String get id;

  MediaType get mediaType;

  String get publicationId;

  @nullable
  String get thumbnailUrl;

  @nullable
  String get adContent;

  @nullable
  String get adLocation;

  @nullable
  String get adCategory;

  @nullable
  String get adConsent;

  @nullable
  bool get paymentNecessary;

  @nullable
  bool get userHasPaid;

  @nullable
  String get url;

  factory Media([updates(MediaBuilder b)]) = _$Media;
}

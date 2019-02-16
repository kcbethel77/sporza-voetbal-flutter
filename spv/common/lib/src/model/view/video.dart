import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:common_spv/src/model/view/id.dart';
import 'package:common_spv/src/model/view/accessible.dart';

part 'package:common_spv/src/model/view/video.g.dart';

abstract class Video implements Built<Video, VideoBuilder>, Id, Accessible {
  static Serializer<Video> get serializer => _$videoSerializer;

  Video._();

  String get title;

  String get date;

  @nullable
  String get contentUrl;

  @nullable
  String get imageUrl;

  @nullable
  String get adDomain;

  @nullable
  String get adPartner;

  @nullable
  String get adContent;

  @nullable
  String get adCategory;

  @nullable
  String get adLocation;

  @nullable
  String get adConsent;

  factory Video([updates(VideoBuilder b)]) = _$Video;
}

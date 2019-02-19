// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VideoEvent> _$videoEventSerializer = new _$VideoEventSerializer();

class _$VideoEventSerializer implements StructuredSerializer<VideoEvent> {
  @override
  final Iterable<Type> types = const [VideoEvent, _$VideoEvent];
  @override
  final String wireName = 'VideoEvent';

  @override
  Iterable serialize(Serializers serializers, VideoEvent object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'videoId',
      serializers.serialize(object.videoId,
          specifiedType: const FullType(String)),
      'mediaType',
      serializers.serialize(object.mediaType,
          specifiedType: const FullType(MediaType)),
    ];
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.imageUrl != null) {
      result
        ..add('imageUrl')
        ..add(serializers.serialize(object.imageUrl,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  VideoEvent deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VideoEventBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'videoId':
          result.videoId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imageUrl':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mediaType':
          result.mediaType = serializers.deserialize(value,
              specifiedType: const FullType(MediaType)) as MediaType;
          break;
      }
    }

    return result.build();
  }
}

class _$VideoEvent extends VideoEvent {
  @override
  final String videoId;
  @override
  final String title;
  @override
  final String imageUrl;
  @override
  final MediaType mediaType;

  factory _$VideoEvent([void updates(VideoEventBuilder b)]) =>
      (new VideoEventBuilder()..update(updates)).build();

  _$VideoEvent._({this.videoId, this.title, this.imageUrl, this.mediaType})
      : super._() {
    if (videoId == null) {
      throw new BuiltValueNullFieldError('VideoEvent', 'videoId');
    }
    if (mediaType == null) {
      throw new BuiltValueNullFieldError('VideoEvent', 'mediaType');
    }
  }

  @override
  VideoEvent rebuild(void updates(VideoEventBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  VideoEventBuilder toBuilder() => new VideoEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VideoEvent &&
        videoId == other.videoId &&
        title == other.title &&
        imageUrl == other.imageUrl &&
        mediaType == other.mediaType;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, videoId.hashCode), title.hashCode), imageUrl.hashCode),
        mediaType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('VideoEvent')
          ..add('videoId', videoId)
          ..add('title', title)
          ..add('imageUrl', imageUrl)
          ..add('mediaType', mediaType))
        .toString();
  }
}

class VideoEventBuilder implements Builder<VideoEvent, VideoEventBuilder> {
  _$VideoEvent _$v;

  String _videoId;
  String get videoId => _$this._videoId;
  set videoId(String videoId) => _$this._videoId = videoId;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  MediaType _mediaType;
  MediaType get mediaType => _$this._mediaType;
  set mediaType(MediaType mediaType) => _$this._mediaType = mediaType;

  VideoEventBuilder();

  VideoEventBuilder get _$this {
    if (_$v != null) {
      _videoId = _$v.videoId;
      _title = _$v.title;
      _imageUrl = _$v.imageUrl;
      _mediaType = _$v.mediaType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VideoEvent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$VideoEvent;
  }

  @override
  void update(void updates(VideoEventBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$VideoEvent build() {
    final _$result = _$v ??
        new _$VideoEvent._(
            videoId: videoId,
            title: title,
            imageUrl: imageUrl,
            mediaType: mediaType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

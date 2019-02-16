// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_stream_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LiveStreamEvent> _$liveStreamEventSerializer =
    new _$LiveStreamEventSerializer();

class _$LiveStreamEventSerializer
    implements StructuredSerializer<LiveStreamEvent> {
  @override
  final Iterable<Type> types = const [LiveStreamEvent, _$LiveStreamEvent];
  @override
  final String wireName = 'LiveStreamEvent';

  @override
  Iterable serialize(Serializers serializers, LiveStreamEvent object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'liveStreamId',
      serializers.serialize(object.liveStreamId,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'mediaType',
      serializers.serialize(object.mediaType,
          specifiedType: const FullType(MediaType)),
      'adContent',
      serializers.serialize(object.adContent,
          specifiedType: const FullType(String)),
      'adLocation',
      serializers.serialize(object.adLocation,
          specifiedType: const FullType(String)),
      'adCategory',
      serializers.serialize(object.adCategory,
          specifiedType: const FullType(String)),
      'adConsent',
      serializers.serialize(object.adConsent,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  LiveStreamEvent deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LiveStreamEventBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'liveStreamId':
          result.liveStreamId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mediaType':
          result.mediaType = serializers.deserialize(value,
              specifiedType: const FullType(MediaType)) as MediaType;
          break;
        case 'adContent':
          result.adContent = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'adLocation':
          result.adLocation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'adCategory':
          result.adCategory = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'adConsent':
          result.adConsent = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LiveStreamEvent extends LiveStreamEvent {
  @override
  final String liveStreamId;
  @override
  final String title;
  @override
  final String url;
  @override
  final MediaType mediaType;
  @override
  final String adContent;
  @override
  final String adLocation;
  @override
  final String adCategory;
  @override
  final String adConsent;

  factory _$LiveStreamEvent([void updates(LiveStreamEventBuilder b)]) =>
      (new LiveStreamEventBuilder()..update(updates)).build();

  _$LiveStreamEvent._(
      {this.liveStreamId,
      this.title,
      this.url,
      this.mediaType,
      this.adContent,
      this.adLocation,
      this.adCategory,
      this.adConsent})
      : super._() {
    if (liveStreamId == null) {
      throw new BuiltValueNullFieldError('LiveStreamEvent', 'liveStreamId');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('LiveStreamEvent', 'title');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('LiveStreamEvent', 'url');
    }
    if (mediaType == null) {
      throw new BuiltValueNullFieldError('LiveStreamEvent', 'mediaType');
    }
    if (adContent == null) {
      throw new BuiltValueNullFieldError('LiveStreamEvent', 'adContent');
    }
    if (adLocation == null) {
      throw new BuiltValueNullFieldError('LiveStreamEvent', 'adLocation');
    }
    if (adCategory == null) {
      throw new BuiltValueNullFieldError('LiveStreamEvent', 'adCategory');
    }
    if (adConsent == null) {
      throw new BuiltValueNullFieldError('LiveStreamEvent', 'adConsent');
    }
  }

  @override
  LiveStreamEvent rebuild(void updates(LiveStreamEventBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  LiveStreamEventBuilder toBuilder() =>
      new LiveStreamEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LiveStreamEvent &&
        liveStreamId == other.liveStreamId &&
        title == other.title &&
        url == other.url &&
        mediaType == other.mediaType &&
        adContent == other.adContent &&
        adLocation == other.adLocation &&
        adCategory == other.adCategory &&
        adConsent == other.adConsent;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, liveStreamId.hashCode), title.hashCode),
                            url.hashCode),
                        mediaType.hashCode),
                    adContent.hashCode),
                adLocation.hashCode),
            adCategory.hashCode),
        adConsent.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LiveStreamEvent')
          ..add('liveStreamId', liveStreamId)
          ..add('title', title)
          ..add('url', url)
          ..add('mediaType', mediaType)
          ..add('adContent', adContent)
          ..add('adLocation', adLocation)
          ..add('adCategory', adCategory)
          ..add('adConsent', adConsent))
        .toString();
  }
}

class LiveStreamEventBuilder
    implements Builder<LiveStreamEvent, LiveStreamEventBuilder> {
  _$LiveStreamEvent _$v;

  String _liveStreamId;
  String get liveStreamId => _$this._liveStreamId;
  set liveStreamId(String liveStreamId) => _$this._liveStreamId = liveStreamId;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  MediaType _mediaType;
  MediaType get mediaType => _$this._mediaType;
  set mediaType(MediaType mediaType) => _$this._mediaType = mediaType;

  String _adContent;
  String get adContent => _$this._adContent;
  set adContent(String adContent) => _$this._adContent = adContent;

  String _adLocation;
  String get adLocation => _$this._adLocation;
  set adLocation(String adLocation) => _$this._adLocation = adLocation;

  String _adCategory;
  String get adCategory => _$this._adCategory;
  set adCategory(String adCategory) => _$this._adCategory = adCategory;

  String _adConsent;
  String get adConsent => _$this._adConsent;
  set adConsent(String adConsent) => _$this._adConsent = adConsent;

  LiveStreamEventBuilder();

  LiveStreamEventBuilder get _$this {
    if (_$v != null) {
      _liveStreamId = _$v.liveStreamId;
      _title = _$v.title;
      _url = _$v.url;
      _mediaType = _$v.mediaType;
      _adContent = _$v.adContent;
      _adLocation = _$v.adLocation;
      _adCategory = _$v.adCategory;
      _adConsent = _$v.adConsent;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LiveStreamEvent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LiveStreamEvent;
  }

  @override
  void update(void updates(LiveStreamEventBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$LiveStreamEvent build() {
    final _$result = _$v ??
        new _$LiveStreamEvent._(
            liveStreamId: liveStreamId,
            title: title,
            url: url,
            mediaType: mediaType,
            adContent: adContent,
            adLocation: adLocation,
            adCategory: adCategory,
            adConsent: adConsent);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

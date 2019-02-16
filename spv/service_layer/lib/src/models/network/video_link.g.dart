// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_link.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VideoLink> _$videoLinkSerializer = new _$VideoLinkSerializer();

class _$VideoLinkSerializer implements StructuredSerializer<VideoLink> {
  @override
  final Iterable<Type> types = const [VideoLink, _$VideoLink];
  @override
  final String wireName = 'VideoLink';

  @override
  Iterable serialize(Serializers serializers, VideoLink object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'publicationId',
      serializers.serialize(object.publicationId,
          specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'mediaType',
      serializers.serialize(object.mediaType,
          specifiedType: const FullType(common.MediaType)),
      'adDomain',
      serializers.serialize(object.adDomain,
          specifiedType: const FullType(String)),
      'adPartner',
      serializers.serialize(object.adPartner,
          specifiedType: const FullType(String)),
      'adContent',
      serializers.serialize(object.adContent,
          specifiedType: const FullType(String)),
      'adCategory',
      serializers.serialize(object.adCategory,
          specifiedType: const FullType(String)),
      'adLocation',
      serializers.serialize(object.adLocation,
          specifiedType: const FullType(String)),
      'adConsent',
      serializers.serialize(object.adConsent,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  VideoLink deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VideoLinkBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'publicationId':
          result.publicationId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mediaType':
          result.mediaType = serializers.deserialize(value,
                  specifiedType: const FullType(common.MediaType))
              as common.MediaType;
          break;
        case 'adDomain':
          result.adDomain = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'adPartner':
          result.adPartner = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'adContent':
          result.adContent = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'adCategory':
          result.adCategory = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'adLocation':
          result.adLocation = serializers.deserialize(value,
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

class _$VideoLink extends VideoLink {
  @override
  final String id;
  @override
  final String publicationId;
  @override
  final String url;
  @override
  final common.MediaType mediaType;
  @override
  final String adDomain;
  @override
  final String adPartner;
  @override
  final String adContent;
  @override
  final String adCategory;
  @override
  final String adLocation;
  @override
  final String adConsent;

  factory _$VideoLink([void updates(VideoLinkBuilder b)]) =>
      (new VideoLinkBuilder()..update(updates)).build();

  _$VideoLink._(
      {this.id,
      this.publicationId,
      this.url,
      this.mediaType,
      this.adDomain,
      this.adPartner,
      this.adContent,
      this.adCategory,
      this.adLocation,
      this.adConsent})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('VideoLink', 'id');
    }
    if (publicationId == null) {
      throw new BuiltValueNullFieldError('VideoLink', 'publicationId');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('VideoLink', 'url');
    }
    if (mediaType == null) {
      throw new BuiltValueNullFieldError('VideoLink', 'mediaType');
    }
    if (adDomain == null) {
      throw new BuiltValueNullFieldError('VideoLink', 'adDomain');
    }
    if (adPartner == null) {
      throw new BuiltValueNullFieldError('VideoLink', 'adPartner');
    }
    if (adContent == null) {
      throw new BuiltValueNullFieldError('VideoLink', 'adContent');
    }
    if (adCategory == null) {
      throw new BuiltValueNullFieldError('VideoLink', 'adCategory');
    }
    if (adLocation == null) {
      throw new BuiltValueNullFieldError('VideoLink', 'adLocation');
    }
    if (adConsent == null) {
      throw new BuiltValueNullFieldError('VideoLink', 'adConsent');
    }
  }

  @override
  VideoLink rebuild(void updates(VideoLinkBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  VideoLinkBuilder toBuilder() => new VideoLinkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VideoLink &&
        id == other.id &&
        publicationId == other.publicationId &&
        url == other.url &&
        mediaType == other.mediaType &&
        adDomain == other.adDomain &&
        adPartner == other.adPartner &&
        adContent == other.adContent &&
        adCategory == other.adCategory &&
        adLocation == other.adLocation &&
        adConsent == other.adConsent;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, id.hashCode),
                                        publicationId.hashCode),
                                    url.hashCode),
                                mediaType.hashCode),
                            adDomain.hashCode),
                        adPartner.hashCode),
                    adContent.hashCode),
                adCategory.hashCode),
            adLocation.hashCode),
        adConsent.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('VideoLink')
          ..add('id', id)
          ..add('publicationId', publicationId)
          ..add('url', url)
          ..add('mediaType', mediaType)
          ..add('adDomain', adDomain)
          ..add('adPartner', adPartner)
          ..add('adContent', adContent)
          ..add('adCategory', adCategory)
          ..add('adLocation', adLocation)
          ..add('adConsent', adConsent))
        .toString();
  }
}

class VideoLinkBuilder implements Builder<VideoLink, VideoLinkBuilder> {
  _$VideoLink _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _publicationId;
  String get publicationId => _$this._publicationId;
  set publicationId(String publicationId) =>
      _$this._publicationId = publicationId;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  common.MediaType _mediaType;
  common.MediaType get mediaType => _$this._mediaType;
  set mediaType(common.MediaType mediaType) => _$this._mediaType = mediaType;

  String _adDomain;
  String get adDomain => _$this._adDomain;
  set adDomain(String adDomain) => _$this._adDomain = adDomain;

  String _adPartner;
  String get adPartner => _$this._adPartner;
  set adPartner(String adPartner) => _$this._adPartner = adPartner;

  String _adContent;
  String get adContent => _$this._adContent;
  set adContent(String adContent) => _$this._adContent = adContent;

  String _adCategory;
  String get adCategory => _$this._adCategory;
  set adCategory(String adCategory) => _$this._adCategory = adCategory;

  String _adLocation;
  String get adLocation => _$this._adLocation;
  set adLocation(String adLocation) => _$this._adLocation = adLocation;

  String _adConsent;
  String get adConsent => _$this._adConsent;
  set adConsent(String adConsent) => _$this._adConsent = adConsent;

  VideoLinkBuilder();

  VideoLinkBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _publicationId = _$v.publicationId;
      _url = _$v.url;
      _mediaType = _$v.mediaType;
      _adDomain = _$v.adDomain;
      _adPartner = _$v.adPartner;
      _adContent = _$v.adContent;
      _adCategory = _$v.adCategory;
      _adLocation = _$v.adLocation;
      _adConsent = _$v.adConsent;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VideoLink other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$VideoLink;
  }

  @override
  void update(void updates(VideoLinkBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$VideoLink build() {
    final _$result = _$v ??
        new _$VideoLink._(
            id: id,
            publicationId: publicationId,
            url: url,
            mediaType: mediaType,
            adDomain: adDomain,
            adPartner: adPartner,
            adContent: adContent,
            adCategory: adCategory,
            adLocation: adLocation,
            adConsent: adConsent);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

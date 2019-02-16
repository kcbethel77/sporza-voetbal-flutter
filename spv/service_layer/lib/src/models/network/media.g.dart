// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Media> _$mediaSerializer = new _$MediaSerializer();

class _$MediaSerializer implements StructuredSerializer<Media> {
  @override
  final Iterable<Type> types = const [Media, _$Media];
  @override
  final String wireName = 'Media';

  @override
  Iterable serialize(Serializers serializers, Media object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'mediaType',
      serializers.serialize(object.mediaType,
          specifiedType: const FullType(common.MediaType)),
      'publicationId',
      serializers.serialize(object.publicationId,
          specifiedType: const FullType(String)),
    ];
    if (object.thumbnailUrl != null) {
      result
        ..add('thumbnailUrl')
        ..add(serializers.serialize(object.thumbnailUrl,
            specifiedType: const FullType(String)));
    }
    if (object.adContent != null) {
      result
        ..add('adContent')
        ..add(serializers.serialize(object.adContent,
            specifiedType: const FullType(String)));
    }
    if (object.adLocation != null) {
      result
        ..add('adLocation')
        ..add(serializers.serialize(object.adLocation,
            specifiedType: const FullType(String)));
    }
    if (object.adCategory != null) {
      result
        ..add('adCategory')
        ..add(serializers.serialize(object.adCategory,
            specifiedType: const FullType(String)));
    }
    if (object.adConsent != null) {
      result
        ..add('adConsent')
        ..add(serializers.serialize(object.adConsent,
            specifiedType: const FullType(String)));
    }
    if (object.paymentNecessary != null) {
      result
        ..add('paymentNecessary')
        ..add(serializers.serialize(object.paymentNecessary,
            specifiedType: const FullType(bool)));
    }
    if (object.userHasPaid != null) {
      result
        ..add('userHasPaid')
        ..add(serializers.serialize(object.userHasPaid,
            specifiedType: const FullType(bool)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Media deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MediaBuilder();

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
        case 'mediaType':
          result.mediaType = serializers.deserialize(value,
                  specifiedType: const FullType(common.MediaType))
              as common.MediaType;
          break;
        case 'publicationId':
          result.publicationId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'thumbnailUrl':
          result.thumbnailUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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
        case 'paymentNecessary':
          result.paymentNecessary = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'userHasPaid':
          result.userHasPaid = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Media extends Media {
  @override
  final String id;
  @override
  final common.MediaType mediaType;
  @override
  final String publicationId;
  @override
  final String thumbnailUrl;
  @override
  final String adContent;
  @override
  final String adLocation;
  @override
  final String adCategory;
  @override
  final String adConsent;
  @override
  final bool paymentNecessary;
  @override
  final bool userHasPaid;
  @override
  final String url;

  factory _$Media([void updates(MediaBuilder b)]) =>
      (new MediaBuilder()..update(updates)).build();

  _$Media._(
      {this.id,
      this.mediaType,
      this.publicationId,
      this.thumbnailUrl,
      this.adContent,
      this.adLocation,
      this.adCategory,
      this.adConsent,
      this.paymentNecessary,
      this.userHasPaid,
      this.url})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Media', 'id');
    }
    if (mediaType == null) {
      throw new BuiltValueNullFieldError('Media', 'mediaType');
    }
    if (publicationId == null) {
      throw new BuiltValueNullFieldError('Media', 'publicationId');
    }
  }

  @override
  Media rebuild(void updates(MediaBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MediaBuilder toBuilder() => new MediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Media &&
        id == other.id &&
        mediaType == other.mediaType &&
        publicationId == other.publicationId &&
        thumbnailUrl == other.thumbnailUrl &&
        adContent == other.adContent &&
        adLocation == other.adLocation &&
        adCategory == other.adCategory &&
        adConsent == other.adConsent &&
        paymentNecessary == other.paymentNecessary &&
        userHasPaid == other.userHasPaid &&
        url == other.url;
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
                                    $jc(
                                        $jc($jc(0, id.hashCode),
                                            mediaType.hashCode),
                                        publicationId.hashCode),
                                    thumbnailUrl.hashCode),
                                adContent.hashCode),
                            adLocation.hashCode),
                        adCategory.hashCode),
                    adConsent.hashCode),
                paymentNecessary.hashCode),
            userHasPaid.hashCode),
        url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Media')
          ..add('id', id)
          ..add('mediaType', mediaType)
          ..add('publicationId', publicationId)
          ..add('thumbnailUrl', thumbnailUrl)
          ..add('adContent', adContent)
          ..add('adLocation', adLocation)
          ..add('adCategory', adCategory)
          ..add('adConsent', adConsent)
          ..add('paymentNecessary', paymentNecessary)
          ..add('userHasPaid', userHasPaid)
          ..add('url', url))
        .toString();
  }
}

class MediaBuilder implements Builder<Media, MediaBuilder> {
  _$Media _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  common.MediaType _mediaType;
  common.MediaType get mediaType => _$this._mediaType;
  set mediaType(common.MediaType mediaType) => _$this._mediaType = mediaType;

  String _publicationId;
  String get publicationId => _$this._publicationId;
  set publicationId(String publicationId) =>
      _$this._publicationId = publicationId;

  String _thumbnailUrl;
  String get thumbnailUrl => _$this._thumbnailUrl;
  set thumbnailUrl(String thumbnailUrl) => _$this._thumbnailUrl = thumbnailUrl;

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

  bool _paymentNecessary;
  bool get paymentNecessary => _$this._paymentNecessary;
  set paymentNecessary(bool paymentNecessary) =>
      _$this._paymentNecessary = paymentNecessary;

  bool _userHasPaid;
  bool get userHasPaid => _$this._userHasPaid;
  set userHasPaid(bool userHasPaid) => _$this._userHasPaid = userHasPaid;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  MediaBuilder();

  MediaBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _mediaType = _$v.mediaType;
      _publicationId = _$v.publicationId;
      _thumbnailUrl = _$v.thumbnailUrl;
      _adContent = _$v.adContent;
      _adLocation = _$v.adLocation;
      _adCategory = _$v.adCategory;
      _adConsent = _$v.adConsent;
      _paymentNecessary = _$v.paymentNecessary;
      _userHasPaid = _$v.userHasPaid;
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Media other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Media;
  }

  @override
  void update(void updates(MediaBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Media build() {
    final _$result = _$v ??
        new _$Media._(
            id: id,
            mediaType: mediaType,
            publicationId: publicationId,
            thumbnailUrl: thumbnailUrl,
            adContent: adContent,
            adLocation: adLocation,
            adCategory: adCategory,
            adConsent: adConsent,
            paymentNecessary: paymentNecessary,
            userHasPaid: userHasPaid,
            url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

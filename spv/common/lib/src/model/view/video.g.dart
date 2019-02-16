// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Video> _$videoSerializer = new _$VideoSerializer();

class _$VideoSerializer implements StructuredSerializer<Video> {
  @override
  final Iterable<Type> types = const [Video, _$Video];
  @override
  final String wireName = 'Video';

  @override
  Iterable serialize(Serializers serializers, Video object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'accessibility',
      serializers.serialize(object.accessibility,
          specifiedType: const FullType(String)),
    ];
    if (object.contentUrl != null) {
      result
        ..add('contentUrl')
        ..add(serializers.serialize(object.contentUrl,
            specifiedType: const FullType(String)));
    }
    if (object.imageUrl != null) {
      result
        ..add('imageUrl')
        ..add(serializers.serialize(object.imageUrl,
            specifiedType: const FullType(String)));
    }
    if (object.adDomain != null) {
      result
        ..add('adDomain')
        ..add(serializers.serialize(object.adDomain,
            specifiedType: const FullType(String)));
    }
    if (object.adPartner != null) {
      result
        ..add('adPartner')
        ..add(serializers.serialize(object.adPartner,
            specifiedType: const FullType(String)));
    }
    if (object.adContent != null) {
      result
        ..add('adContent')
        ..add(serializers.serialize(object.adContent,
            specifiedType: const FullType(String)));
    }
    if (object.adCategory != null) {
      result
        ..add('adCategory')
        ..add(serializers.serialize(object.adCategory,
            specifiedType: const FullType(String)));
    }
    if (object.adLocation != null) {
      result
        ..add('adLocation')
        ..add(serializers.serialize(object.adLocation,
            specifiedType: const FullType(String)));
    }
    if (object.adConsent != null) {
      result
        ..add('adConsent')
        ..add(serializers.serialize(object.adConsent,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Video deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VideoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'contentUrl':
          result.contentUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imageUrl':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'accessibility':
          result.accessibility = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Video extends Video {
  @override
  final String title;
  @override
  final String date;
  @override
  final String contentUrl;
  @override
  final String imageUrl;
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
  @override
  final String id;
  @override
  final String accessibility;

  factory _$Video([void updates(VideoBuilder b)]) =>
      (new VideoBuilder()..update(updates)).build();

  _$Video._(
      {this.title,
      this.date,
      this.contentUrl,
      this.imageUrl,
      this.adDomain,
      this.adPartner,
      this.adContent,
      this.adCategory,
      this.adLocation,
      this.adConsent,
      this.id,
      this.accessibility})
      : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('Video', 'title');
    }
    if (date == null) {
      throw new BuiltValueNullFieldError('Video', 'date');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('Video', 'id');
    }
    if (accessibility == null) {
      throw new BuiltValueNullFieldError('Video', 'accessibility');
    }
  }

  @override
  Video rebuild(void updates(VideoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  VideoBuilder toBuilder() => new VideoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Video &&
        title == other.title &&
        date == other.date &&
        contentUrl == other.contentUrl &&
        imageUrl == other.imageUrl &&
        adDomain == other.adDomain &&
        adPartner == other.adPartner &&
        adContent == other.adContent &&
        adCategory == other.adCategory &&
        adLocation == other.adLocation &&
        adConsent == other.adConsent &&
        id == other.id &&
        accessibility == other.accessibility;
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
                                        $jc(
                                            $jc($jc(0, title.hashCode),
                                                date.hashCode),
                                            contentUrl.hashCode),
                                        imageUrl.hashCode),
                                    adDomain.hashCode),
                                adPartner.hashCode),
                            adContent.hashCode),
                        adCategory.hashCode),
                    adLocation.hashCode),
                adConsent.hashCode),
            id.hashCode),
        accessibility.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Video')
          ..add('title', title)
          ..add('date', date)
          ..add('contentUrl', contentUrl)
          ..add('imageUrl', imageUrl)
          ..add('adDomain', adDomain)
          ..add('adPartner', adPartner)
          ..add('adContent', adContent)
          ..add('adCategory', adCategory)
          ..add('adLocation', adLocation)
          ..add('adConsent', adConsent)
          ..add('id', id)
          ..add('accessibility', accessibility))
        .toString();
  }
}

class VideoBuilder implements Builder<Video, VideoBuilder> {
  _$Video _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  String _contentUrl;
  String get contentUrl => _$this._contentUrl;
  set contentUrl(String contentUrl) => _$this._contentUrl = contentUrl;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

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

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _accessibility;
  String get accessibility => _$this._accessibility;
  set accessibility(String accessibility) =>
      _$this._accessibility = accessibility;

  VideoBuilder();

  VideoBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _date = _$v.date;
      _contentUrl = _$v.contentUrl;
      _imageUrl = _$v.imageUrl;
      _adDomain = _$v.adDomain;
      _adPartner = _$v.adPartner;
      _adContent = _$v.adContent;
      _adCategory = _$v.adCategory;
      _adLocation = _$v.adLocation;
      _adConsent = _$v.adConsent;
      _id = _$v.id;
      _accessibility = _$v.accessibility;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Video other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Video;
  }

  @override
  void update(void updates(VideoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Video build() {
    final _$result = _$v ??
        new _$Video._(
            title: title,
            date: date,
            contentUrl: contentUrl,
            imageUrl: imageUrl,
            adDomain: adDomain,
            adPartner: adPartner,
            adContent: adContent,
            adCategory: adCategory,
            adLocation: adLocation,
            adConsent: adConsent,
            id: id,
            accessibility: accessibility);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

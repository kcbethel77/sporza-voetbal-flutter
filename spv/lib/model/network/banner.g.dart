// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Banner> _$bannerSerializer = new _$BannerSerializer();

class _$BannerSerializer implements StructuredSerializer<Banner> {
  @override
  final Iterable<Type> types = const [Banner, _$Banner];
  @override
  final String wireName = 'Banner';

  @override
  Iterable serialize(Serializers serializers, Banner object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'format',
      serializers.serialize(object.format,
          specifiedType: const FullType(BannerFormat)),
      'pebblePhoneUrl',
      serializers.serialize(object.pebblePhoneUrl,
          specifiedType: const FullType(String)),
      'pebbleTabletUrl',
      serializers.serialize(object.pebbleTabletUrl,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Banner deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BannerBuilder();

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
        case 'format':
          result.format = serializers.deserialize(value,
              specifiedType: const FullType(BannerFormat)) as BannerFormat;
          break;
        case 'pebblePhoneUrl':
          result.pebblePhoneUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pebbleTabletUrl':
          result.pebbleTabletUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Banner extends Banner {
  @override
  final String id;
  @override
  final BannerFormat format;
  @override
  final String pebblePhoneUrl;
  @override
  final String pebbleTabletUrl;

  factory _$Banner([void updates(BannerBuilder b)]) =>
      (new BannerBuilder()..update(updates)).build();

  _$Banner._({this.id, this.format, this.pebblePhoneUrl, this.pebbleTabletUrl})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Banner', 'id');
    }
    if (format == null) {
      throw new BuiltValueNullFieldError('Banner', 'format');
    }
    if (pebblePhoneUrl == null) {
      throw new BuiltValueNullFieldError('Banner', 'pebblePhoneUrl');
    }
    if (pebbleTabletUrl == null) {
      throw new BuiltValueNullFieldError('Banner', 'pebbleTabletUrl');
    }
  }

  @override
  Banner rebuild(void updates(BannerBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  BannerBuilder toBuilder() => new BannerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Banner &&
        id == other.id &&
        format == other.format &&
        pebblePhoneUrl == other.pebblePhoneUrl &&
        pebbleTabletUrl == other.pebbleTabletUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), format.hashCode), pebblePhoneUrl.hashCode),
        pebbleTabletUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Banner')
          ..add('id', id)
          ..add('format', format)
          ..add('pebblePhoneUrl', pebblePhoneUrl)
          ..add('pebbleTabletUrl', pebbleTabletUrl))
        .toString();
  }
}

class BannerBuilder implements Builder<Banner, BannerBuilder> {
  _$Banner _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  BannerFormat _format;
  BannerFormat get format => _$this._format;
  set format(BannerFormat format) => _$this._format = format;

  String _pebblePhoneUrl;
  String get pebblePhoneUrl => _$this._pebblePhoneUrl;
  set pebblePhoneUrl(String pebblePhoneUrl) =>
      _$this._pebblePhoneUrl = pebblePhoneUrl;

  String _pebbleTabletUrl;
  String get pebbleTabletUrl => _$this._pebbleTabletUrl;
  set pebbleTabletUrl(String pebbleTabletUrl) =>
      _$this._pebbleTabletUrl = pebbleTabletUrl;

  BannerBuilder();

  BannerBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _format = _$v.format;
      _pebblePhoneUrl = _$v.pebblePhoneUrl;
      _pebbleTabletUrl = _$v.pebbleTabletUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Banner other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Banner;
  }

  @override
  void update(void updates(BannerBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Banner build() {
    final _$result = _$v ??
        new _$Banner._(
            id: id,
            format: format,
            pebblePhoneUrl: pebblePhoneUrl,
            pebbleTabletUrl: pebbleTabletUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

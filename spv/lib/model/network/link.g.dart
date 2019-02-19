// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'link.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Link> _$linkSerializer = new _$LinkSerializer();

class _$LinkSerializer implements StructuredSerializer<Link> {
  @override
  final Iterable<Type> types = const [Link, _$Link];
  @override
  final String wireName = 'Link';

  @override
  Iterable serialize(Serializers serializers, Link object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'rel',
      serializers.serialize(object.rel, specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Link deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LinkBuilder();

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
        case 'rel':
          result.rel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$Link extends Link {
  @override
  final String id;
  @override
  final String rel;
  @override
  final String url;

  factory _$Link([void updates(LinkBuilder b)]) =>
      (new LinkBuilder()..update(updates)).build();

  _$Link._({this.id, this.rel, this.url}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Link', 'id');
    }
    if (rel == null) {
      throw new BuiltValueNullFieldError('Link', 'rel');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('Link', 'url');
    }
  }

  @override
  Link rebuild(void updates(LinkBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  LinkBuilder toBuilder() => new LinkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Link &&
        id == other.id &&
        rel == other.rel &&
        url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), rel.hashCode), url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Link')
          ..add('id', id)
          ..add('rel', rel)
          ..add('url', url))
        .toString();
  }
}

class LinkBuilder implements Builder<Link, LinkBuilder> {
  _$Link _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _rel;
  String get rel => _$this._rel;
  set rel(String rel) => _$this._rel = rel;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  LinkBuilder();

  LinkBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _rel = _$v.rel;
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Link other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Link;
  }

  @override
  void update(void updates(LinkBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Link build() {
    final _$result = _$v ?? new _$Link._(id: id, rel: rel, url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

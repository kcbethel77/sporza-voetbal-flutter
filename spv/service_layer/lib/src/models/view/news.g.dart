// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<News> _$newsSerializer = new _$NewsSerializer();

class _$NewsSerializer implements StructuredSerializer<News> {
  @override
  final Iterable<Type> types = const [News, _$News];
  @override
  final String wireName = 'News';

  @override
  Iterable serialize(Serializers serializers, News object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
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

    return result;
  }

  @override
  News deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NewsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'contentUrl':
          result.contentUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imageUrl':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
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

class _$News extends News {
  @override
  final String contentUrl;
  @override
  final String title;
  @override
  final String description;
  @override
  final String imageUrl;
  @override
  final String date;
  @override
  final String id;
  @override
  final String accessibility;

  factory _$News([void updates(NewsBuilder b)]) =>
      (new NewsBuilder()..update(updates)).build();

  _$News._(
      {this.contentUrl,
      this.title,
      this.description,
      this.imageUrl,
      this.date,
      this.id,
      this.accessibility})
      : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('News', 'title');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('News', 'description');
    }
    if (date == null) {
      throw new BuiltValueNullFieldError('News', 'date');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('News', 'id');
    }
    if (accessibility == null) {
      throw new BuiltValueNullFieldError('News', 'accessibility');
    }
  }

  @override
  News rebuild(void updates(NewsBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NewsBuilder toBuilder() => new NewsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is News &&
        contentUrl == other.contentUrl &&
        title == other.title &&
        description == other.description &&
        imageUrl == other.imageUrl &&
        date == other.date &&
        id == other.id &&
        accessibility == other.accessibility;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, contentUrl.hashCode), title.hashCode),
                        description.hashCode),
                    imageUrl.hashCode),
                date.hashCode),
            id.hashCode),
        accessibility.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('News')
          ..add('contentUrl', contentUrl)
          ..add('title', title)
          ..add('description', description)
          ..add('imageUrl', imageUrl)
          ..add('date', date)
          ..add('id', id)
          ..add('accessibility', accessibility))
        .toString();
  }
}

class NewsBuilder implements Builder<News, NewsBuilder> {
  _$News _$v;

  String _contentUrl;
  String get contentUrl => _$this._contentUrl;
  set contentUrl(String contentUrl) => _$this._contentUrl = contentUrl;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _accessibility;
  String get accessibility => _$this._accessibility;
  set accessibility(String accessibility) =>
      _$this._accessibility = accessibility;

  NewsBuilder();

  NewsBuilder get _$this {
    if (_$v != null) {
      _contentUrl = _$v.contentUrl;
      _title = _$v.title;
      _description = _$v.description;
      _imageUrl = _$v.imageUrl;
      _date = _$v.date;
      _id = _$v.id;
      _accessibility = _$v.accessibility;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(News other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$News;
  }

  @override
  void update(void updates(NewsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$News build() {
    final _$result = _$v ??
        new _$News._(
            contentUrl: contentUrl,
            title: title,
            description: description,
            imageUrl: imageUrl,
            date: date,
            id: id,
            accessibility: accessibility);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

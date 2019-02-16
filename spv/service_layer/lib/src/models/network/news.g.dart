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
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'accessibilityText',
      serializers.serialize(object.accessibilityText,
          specifiedType: const FullType(String)),
      'imageLinks',
      serializers.serialize(object.imageLinks,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Link)])),
      'contentLinks',
      serializers.serialize(object.contentLinks,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Link)])),
      'abstractText',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
    ];

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'accessibilityText':
          result.accessibilityText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imageLinks':
          result.imageLinks.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Link)]))
              as BuiltList);
          break;
        case 'contentLinks':
          result.contentLinks.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Link)]))
              as BuiltList);
          break;
        case 'abstractText':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$News extends News {
  @override
  final String id;
  @override
  final String date;
  @override
  final String title;
  @override
  final String accessibilityText;
  @override
  final BuiltList<Link> imageLinks;
  @override
  final BuiltList<Link> contentLinks;
  @override
  final String description;

  factory _$News([void updates(NewsBuilder b)]) =>
      (new NewsBuilder()..update(updates)).build();

  _$News._(
      {this.id,
      this.date,
      this.title,
      this.accessibilityText,
      this.imageLinks,
      this.contentLinks,
      this.description})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('News', 'id');
    }
    if (date == null) {
      throw new BuiltValueNullFieldError('News', 'date');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('News', 'title');
    }
    if (accessibilityText == null) {
      throw new BuiltValueNullFieldError('News', 'accessibilityText');
    }
    if (imageLinks == null) {
      throw new BuiltValueNullFieldError('News', 'imageLinks');
    }
    if (contentLinks == null) {
      throw new BuiltValueNullFieldError('News', 'contentLinks');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('News', 'description');
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
        id == other.id &&
        date == other.date &&
        title == other.title &&
        accessibilityText == other.accessibilityText &&
        imageLinks == other.imageLinks &&
        contentLinks == other.contentLinks &&
        description == other.description;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), date.hashCode),
                        title.hashCode),
                    accessibilityText.hashCode),
                imageLinks.hashCode),
            contentLinks.hashCode),
        description.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('News')
          ..add('id', id)
          ..add('date', date)
          ..add('title', title)
          ..add('accessibilityText', accessibilityText)
          ..add('imageLinks', imageLinks)
          ..add('contentLinks', contentLinks)
          ..add('description', description))
        .toString();
  }
}

class NewsBuilder implements Builder<News, NewsBuilder> {
  _$News _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _accessibilityText;
  String get accessibilityText => _$this._accessibilityText;
  set accessibilityText(String accessibilityText) =>
      _$this._accessibilityText = accessibilityText;

  ListBuilder<Link> _imageLinks;
  ListBuilder<Link> get imageLinks =>
      _$this._imageLinks ??= new ListBuilder<Link>();
  set imageLinks(ListBuilder<Link> imageLinks) =>
      _$this._imageLinks = imageLinks;

  ListBuilder<Link> _contentLinks;
  ListBuilder<Link> get contentLinks =>
      _$this._contentLinks ??= new ListBuilder<Link>();
  set contentLinks(ListBuilder<Link> contentLinks) =>
      _$this._contentLinks = contentLinks;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  NewsBuilder();

  NewsBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _date = _$v.date;
      _title = _$v.title;
      _accessibilityText = _$v.accessibilityText;
      _imageLinks = _$v.imageLinks?.toBuilder();
      _contentLinks = _$v.contentLinks?.toBuilder();
      _description = _$v.description;
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
    _$News _$result;
    try {
      _$result = _$v ??
          new _$News._(
              id: id,
              date: date,
              title: title,
              accessibilityText: accessibilityText,
              imageLinks: imageLinks.build(),
              contentLinks: contentLinks.build(),
              description: description);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'imageLinks';
        imageLinks.build();
        _$failedField = 'contentLinks';
        contentLinks.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'News', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

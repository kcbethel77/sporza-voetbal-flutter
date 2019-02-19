// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_quote_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CommentQuoteEvent> _$commentQuoteEventSerializer =
    new _$CommentQuoteEventSerializer();

class _$CommentQuoteEventSerializer
    implements StructuredSerializer<CommentQuoteEvent> {
  @override
  final Iterable<Type> types = const [CommentQuoteEvent, _$CommentQuoteEvent];
  @override
  final String wireName = 'CommentQuoteEvent';

  @override
  Iterable serialize(Serializers serializers, CommentQuoteEvent object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'quote',
      serializers.serialize(object.quote,
          specifiedType: const FullType(String)),
      'author',
      serializers.serialize(object.author,
          specifiedType: const FullType(String)),
      'timeStamp',
      serializers.serialize(object.timeStamp,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  CommentQuoteEvent deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommentQuoteEventBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'quote':
          result.quote = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'author':
          result.author = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'timeStamp':
          result.timeStamp = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CommentQuoteEvent extends CommentQuoteEvent {
  @override
  final String quote;
  @override
  final String author;
  @override
  final String timeStamp;

  factory _$CommentQuoteEvent([void updates(CommentQuoteEventBuilder b)]) =>
      (new CommentQuoteEventBuilder()..update(updates)).build();

  _$CommentQuoteEvent._({this.quote, this.author, this.timeStamp}) : super._() {
    if (quote == null) {
      throw new BuiltValueNullFieldError('CommentQuoteEvent', 'quote');
    }
    if (author == null) {
      throw new BuiltValueNullFieldError('CommentQuoteEvent', 'author');
    }
    if (timeStamp == null) {
      throw new BuiltValueNullFieldError('CommentQuoteEvent', 'timeStamp');
    }
  }

  @override
  CommentQuoteEvent rebuild(void updates(CommentQuoteEventBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentQuoteEventBuilder toBuilder() =>
      new CommentQuoteEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommentQuoteEvent &&
        quote == other.quote &&
        author == other.author &&
        timeStamp == other.timeStamp;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, quote.hashCode), author.hashCode), timeStamp.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommentQuoteEvent')
          ..add('quote', quote)
          ..add('author', author)
          ..add('timeStamp', timeStamp))
        .toString();
  }
}

class CommentQuoteEventBuilder
    implements Builder<CommentQuoteEvent, CommentQuoteEventBuilder> {
  _$CommentQuoteEvent _$v;

  String _quote;
  String get quote => _$this._quote;
  set quote(String quote) => _$this._quote = quote;

  String _author;
  String get author => _$this._author;
  set author(String author) => _$this._author = author;

  String _timeStamp;
  String get timeStamp => _$this._timeStamp;
  set timeStamp(String timeStamp) => _$this._timeStamp = timeStamp;

  CommentQuoteEventBuilder();

  CommentQuoteEventBuilder get _$this {
    if (_$v != null) {
      _quote = _$v.quote;
      _author = _$v.author;
      _timeStamp = _$v.timeStamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommentQuoteEvent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CommentQuoteEvent;
  }

  @override
  void update(void updates(CommentQuoteEventBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$CommentQuoteEvent build() {
    final _$result = _$v ??
        new _$CommentQuoteEvent._(
            quote: quote, author: author, timeStamp: timeStamp);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

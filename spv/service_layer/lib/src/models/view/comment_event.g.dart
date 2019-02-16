// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CommentEvent> _$commentEventSerializer =
    new _$CommentEventSerializer();

class _$CommentEventSerializer implements StructuredSerializer<CommentEvent> {
  @override
  final Iterable<Type> types = const [CommentEvent, _$CommentEvent];
  @override
  final String wireName = 'CommentEvent';

  @override
  Iterable serialize(Serializers serializers, CommentEvent object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
      'timeStamp',
      serializers.serialize(object.timeStamp,
          specifiedType: const FullType(String)),
    ];
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  CommentEvent deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommentEventBuilder();

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
        case 'text':
          result.text = serializers.deserialize(value,
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

class _$CommentEvent extends CommentEvent {
  @override
  final String title;
  @override
  final String text;
  @override
  final String timeStamp;

  factory _$CommentEvent([void updates(CommentEventBuilder b)]) =>
      (new CommentEventBuilder()..update(updates)).build();

  _$CommentEvent._({this.title, this.text, this.timeStamp}) : super._() {
    if (text == null) {
      throw new BuiltValueNullFieldError('CommentEvent', 'text');
    }
    if (timeStamp == null) {
      throw new BuiltValueNullFieldError('CommentEvent', 'timeStamp');
    }
  }

  @override
  CommentEvent rebuild(void updates(CommentEventBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentEventBuilder toBuilder() => new CommentEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommentEvent &&
        title == other.title &&
        text == other.text &&
        timeStamp == other.timeStamp;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, title.hashCode), text.hashCode), timeStamp.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommentEvent')
          ..add('title', title)
          ..add('text', text)
          ..add('timeStamp', timeStamp))
        .toString();
  }
}

class CommentEventBuilder
    implements Builder<CommentEvent, CommentEventBuilder> {
  _$CommentEvent _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  String _timeStamp;
  String get timeStamp => _$this._timeStamp;
  set timeStamp(String timeStamp) => _$this._timeStamp = timeStamp;

  CommentEventBuilder();

  CommentEventBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _text = _$v.text;
      _timeStamp = _$v.timeStamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommentEvent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CommentEvent;
  }

  @override
  void update(void updates(CommentEventBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$CommentEvent build() {
    final _$result = _$v ??
        new _$CommentEvent._(title: title, text: text, timeStamp: timeStamp);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

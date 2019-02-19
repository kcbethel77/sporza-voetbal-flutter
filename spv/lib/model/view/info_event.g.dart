// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InfoEvent> _$infoEventSerializer = new _$InfoEventSerializer();

class _$InfoEventSerializer implements StructuredSerializer<InfoEvent> {
  @override
  final Iterable<Type> types = const [InfoEvent, _$InfoEvent];
  @override
  final String wireName = 'InfoEvent';

  @override
  Iterable serialize(Serializers serializers, InfoEvent object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'info',
      serializers.serialize(object.info, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  InfoEvent deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InfoEventBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'info':
          result.info = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InfoEvent extends InfoEvent {
  @override
  final String info;

  factory _$InfoEvent([void updates(InfoEventBuilder b)]) =>
      (new InfoEventBuilder()..update(updates)).build();

  _$InfoEvent._({this.info}) : super._() {
    if (info == null) {
      throw new BuiltValueNullFieldError('InfoEvent', 'info');
    }
  }

  @override
  InfoEvent rebuild(void updates(InfoEventBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  InfoEventBuilder toBuilder() => new InfoEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InfoEvent && info == other.info;
  }

  @override
  int get hashCode {
    return $jf($jc(0, info.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InfoEvent')..add('info', info))
        .toString();
  }
}

class InfoEventBuilder implements Builder<InfoEvent, InfoEventBuilder> {
  _$InfoEvent _$v;

  String _info;
  String get info => _$this._info;
  set info(String info) => _$this._info = info;

  InfoEventBuilder();

  InfoEventBuilder get _$this {
    if (_$v != null) {
      _info = _$v.info;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InfoEvent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InfoEvent;
  }

  @override
  void update(void updates(InfoEventBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$InfoEvent build() {
    final _$result = _$v ?? new _$InfoEvent._(info: info);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

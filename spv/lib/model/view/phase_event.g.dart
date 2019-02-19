// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phase_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PhaseEvent> _$phaseEventSerializer = new _$PhaseEventSerializer();

class _$PhaseEventSerializer implements StructuredSerializer<PhaseEvent> {
  @override
  final Iterable<Type> types = const [PhaseEvent, _$PhaseEvent];
  @override
  final String wireName = 'PhaseEvent';

  @override
  Iterable serialize(Serializers serializers, PhaseEvent object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  PhaseEvent deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PhaseEventBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PhaseEvent extends PhaseEvent {
  @override
  final String name;

  factory _$PhaseEvent([void updates(PhaseEventBuilder b)]) =>
      (new PhaseEventBuilder()..update(updates)).build();

  _$PhaseEvent._({this.name}) : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('PhaseEvent', 'name');
    }
  }

  @override
  PhaseEvent rebuild(void updates(PhaseEventBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  PhaseEventBuilder toBuilder() => new PhaseEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PhaseEvent && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc(0, name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PhaseEvent')..add('name', name))
        .toString();
  }
}

class PhaseEventBuilder implements Builder<PhaseEvent, PhaseEventBuilder> {
  _$PhaseEvent _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  PhaseEventBuilder();

  PhaseEventBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PhaseEvent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PhaseEvent;
  }

  @override
  void update(void updates(PhaseEventBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$PhaseEvent build() {
    final _$result = _$v ?? new _$PhaseEvent._(name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

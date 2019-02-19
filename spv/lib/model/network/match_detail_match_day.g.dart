// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_detail_match_day.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MatchDetailMatchDay> _$matchDetailMatchDaySerializer =
    new _$MatchDetailMatchDaySerializer();

class _$MatchDetailMatchDaySerializer
    implements StructuredSerializer<MatchDetailMatchDay> {
  @override
  final Iterable<Type> types = const [
    MatchDetailMatchDay,
    _$MatchDetailMatchDay
  ];
  @override
  final String wireName = 'MatchDetailMatchDay';

  @override
  Iterable serialize(Serializers serializers, MatchDetailMatchDay object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  MatchDetailMatchDay deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MatchDetailMatchDayBuilder();

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

class _$MatchDetailMatchDay extends MatchDetailMatchDay {
  @override
  final String name;

  factory _$MatchDetailMatchDay([void updates(MatchDetailMatchDayBuilder b)]) =>
      (new MatchDetailMatchDayBuilder()..update(updates)).build();

  _$MatchDetailMatchDay._({this.name}) : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('MatchDetailMatchDay', 'name');
    }
  }

  @override
  MatchDetailMatchDay rebuild(void updates(MatchDetailMatchDayBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MatchDetailMatchDayBuilder toBuilder() =>
      new MatchDetailMatchDayBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MatchDetailMatchDay && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc(0, name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MatchDetailMatchDay')
          ..add('name', name))
        .toString();
  }
}

class MatchDetailMatchDayBuilder
    implements Builder<MatchDetailMatchDay, MatchDetailMatchDayBuilder> {
  _$MatchDetailMatchDay _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  MatchDetailMatchDayBuilder();

  MatchDetailMatchDayBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MatchDetailMatchDay other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MatchDetailMatchDay;
  }

  @override
  void update(void updates(MatchDetailMatchDayBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$MatchDetailMatchDay build() {
    final _$result = _$v ?? new _$MatchDetailMatchDay._(name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

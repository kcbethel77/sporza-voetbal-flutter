// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_day.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MatchDay> _$matchDaySerializer = new _$MatchDaySerializer();

class _$MatchDaySerializer implements StructuredSerializer<MatchDay> {
  @override
  final Iterable<Type> types = const [MatchDay, _$MatchDay];
  @override
  final String wireName = 'MatchDay';

  @override
  Iterable serialize(Serializers serializers, MatchDay object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'isCurrent',
      serializers.serialize(object.isCurrent,
          specifiedType: const FullType(bool)),
      'matches',
      serializers.serialize(object.matches,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Match)])),
      'accessibility',
      serializers.serialize(object.accessibility,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  MatchDay deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MatchDayBuilder();

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
        case 'isCurrent':
          result.isCurrent = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'matches':
          result.matches.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Match)]))
              as BuiltList);
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

class _$MatchDay extends MatchDay {
  @override
  final String name;
  @override
  final bool isCurrent;
  @override
  final BuiltList<Match> matches;
  @override
  final String accessibility;

  factory _$MatchDay([void updates(MatchDayBuilder b)]) =>
      (new MatchDayBuilder()..update(updates)).build();

  _$MatchDay._({this.name, this.isCurrent, this.matches, this.accessibility})
      : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('MatchDay', 'name');
    }
    if (isCurrent == null) {
      throw new BuiltValueNullFieldError('MatchDay', 'isCurrent');
    }
    if (matches == null) {
      throw new BuiltValueNullFieldError('MatchDay', 'matches');
    }
    if (accessibility == null) {
      throw new BuiltValueNullFieldError('MatchDay', 'accessibility');
    }
  }

  @override
  MatchDay rebuild(void updates(MatchDayBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MatchDayBuilder toBuilder() => new MatchDayBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MatchDay &&
        name == other.name &&
        isCurrent == other.isCurrent &&
        matches == other.matches &&
        accessibility == other.accessibility;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), isCurrent.hashCode), matches.hashCode),
        accessibility.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MatchDay')
          ..add('name', name)
          ..add('isCurrent', isCurrent)
          ..add('matches', matches)
          ..add('accessibility', accessibility))
        .toString();
  }
}

class MatchDayBuilder implements Builder<MatchDay, MatchDayBuilder> {
  _$MatchDay _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  bool _isCurrent;
  bool get isCurrent => _$this._isCurrent;
  set isCurrent(bool isCurrent) => _$this._isCurrent = isCurrent;

  ListBuilder<Match> _matches;
  ListBuilder<Match> get matches =>
      _$this._matches ??= new ListBuilder<Match>();
  set matches(ListBuilder<Match> matches) => _$this._matches = matches;

  String _accessibility;
  String get accessibility => _$this._accessibility;
  set accessibility(String accessibility) =>
      _$this._accessibility = accessibility;

  MatchDayBuilder();

  MatchDayBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _isCurrent = _$v.isCurrent;
      _matches = _$v.matches?.toBuilder();
      _accessibility = _$v.accessibility;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MatchDay other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MatchDay;
  }

  @override
  void update(void updates(MatchDayBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$MatchDay build() {
    _$MatchDay _$result;
    try {
      _$result = _$v ??
          new _$MatchDay._(
              name: name,
              isCurrent: isCurrent,
              matches: matches.build(),
              accessibility: accessibility);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'matches';
        matches.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MatchDay', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

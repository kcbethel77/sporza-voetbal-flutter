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
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'accessibilityText',
      serializers.serialize(object.accessibilityText,
          specifiedType: const FullType(String)),
      'matches',
      serializers.serialize(object.matches,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Match)])),
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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'accessibilityText':
          result.accessibilityText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'matches':
          result.matches.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Match)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$MatchDay extends MatchDay {
  @override
  final String id;
  @override
  final String name;
  @override
  final String accessibilityText;
  @override
  final BuiltList<Match> matches;

  factory _$MatchDay([void updates(MatchDayBuilder b)]) =>
      (new MatchDayBuilder()..update(updates)).build();

  _$MatchDay._({this.id, this.name, this.accessibilityText, this.matches})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('MatchDay', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('MatchDay', 'name');
    }
    if (accessibilityText == null) {
      throw new BuiltValueNullFieldError('MatchDay', 'accessibilityText');
    }
    if (matches == null) {
      throw new BuiltValueNullFieldError('MatchDay', 'matches');
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
        id == other.id &&
        name == other.name &&
        accessibilityText == other.accessibilityText &&
        matches == other.matches;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), name.hashCode),
            accessibilityText.hashCode),
        matches.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MatchDay')
          ..add('id', id)
          ..add('name', name)
          ..add('accessibilityText', accessibilityText)
          ..add('matches', matches))
        .toString();
  }
}

class MatchDayBuilder implements Builder<MatchDay, MatchDayBuilder> {
  _$MatchDay _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _accessibilityText;
  String get accessibilityText => _$this._accessibilityText;
  set accessibilityText(String accessibilityText) =>
      _$this._accessibilityText = accessibilityText;

  ListBuilder<Match> _matches;
  ListBuilder<Match> get matches =>
      _$this._matches ??= new ListBuilder<Match>();
  set matches(ListBuilder<Match> matches) => _$this._matches = matches;

  MatchDayBuilder();

  MatchDayBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _accessibilityText = _$v.accessibilityText;
      _matches = _$v.matches?.toBuilder();
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
              id: id,
              name: name,
              accessibilityText: accessibilityText,
              matches: matches.build());
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

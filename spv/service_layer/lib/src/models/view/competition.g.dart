// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'competition.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Competition> _$competitionSerializer = new _$CompetitionSerializer();

class _$CompetitionSerializer implements StructuredSerializer<Competition> {
  @override
  final Iterable<Type> types = const [Competition, _$Competition];
  @override
  final String wireName = 'Competition';

  @override
  Iterable serialize(Serializers serializers, Competition object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'abbreviation',
      serializers.serialize(object.abbreviation,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'accessibility',
      serializers.serialize(object.accessibility,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Competition deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CompetitionBuilder();

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
        case 'abbreviation':
          result.abbreviation = serializers.deserialize(value,
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

class _$Competition extends Competition {
  @override
  final String name;
  @override
  final String abbreviation;
  @override
  final String id;
  @override
  final String accessibility;

  factory _$Competition([void updates(CompetitionBuilder b)]) =>
      (new CompetitionBuilder()..update(updates)).build();

  _$Competition._({this.name, this.abbreviation, this.id, this.accessibility})
      : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('Competition', 'name');
    }
    if (abbreviation == null) {
      throw new BuiltValueNullFieldError('Competition', 'abbreviation');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('Competition', 'id');
    }
    if (accessibility == null) {
      throw new BuiltValueNullFieldError('Competition', 'accessibility');
    }
  }

  @override
  Competition rebuild(void updates(CompetitionBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CompetitionBuilder toBuilder() => new CompetitionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Competition &&
        name == other.name &&
        abbreviation == other.abbreviation &&
        id == other.id &&
        accessibility == other.accessibility;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), abbreviation.hashCode), id.hashCode),
        accessibility.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Competition')
          ..add('name', name)
          ..add('abbreviation', abbreviation)
          ..add('id', id)
          ..add('accessibility', accessibility))
        .toString();
  }
}

class CompetitionBuilder implements Builder<Competition, CompetitionBuilder> {
  _$Competition _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _abbreviation;
  String get abbreviation => _$this._abbreviation;
  set abbreviation(String abbreviation) => _$this._abbreviation = abbreviation;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _accessibility;
  String get accessibility => _$this._accessibility;
  set accessibility(String accessibility) =>
      _$this._accessibility = accessibility;

  CompetitionBuilder();

  CompetitionBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _abbreviation = _$v.abbreviation;
      _id = _$v.id;
      _accessibility = _$v.accessibility;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Competition other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Competition;
  }

  @override
  void update(void updates(CompetitionBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Competition build() {
    final _$result = _$v ??
        new _$Competition._(
            name: name,
            abbreviation: abbreviation,
            id: id,
            accessibility: accessibility);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

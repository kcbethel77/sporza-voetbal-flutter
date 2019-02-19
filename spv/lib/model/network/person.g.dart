// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Person> _$personSerializer = new _$PersonSerializer();

class _$PersonSerializer implements StructuredSerializer<Person> {
  @override
  final Iterable<Type> types = const [Person, _$Person];
  @override
  final String wireName = 'Person';

  @override
  Iterable serialize(Serializers serializers, Person object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'shortName',
      serializers.serialize(object.shortName,
          specifiedType: const FullType(String)),
    ];
    if (object.firstName != null) {
      result
        ..add('firstName')
        ..add(serializers.serialize(object.firstName,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Person deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PersonBuilder();

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
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'shortName':
          result.shortName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Person extends Person {
  @override
  final String id;
  @override
  final String lastName;
  @override
  final String firstName;
  @override
  final String shortName;

  factory _$Person([void updates(PersonBuilder b)]) =>
      (new PersonBuilder()..update(updates)).build();

  _$Person._({this.id, this.lastName, this.firstName, this.shortName})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Person', 'id');
    }
    if (lastName == null) {
      throw new BuiltValueNullFieldError('Person', 'lastName');
    }
    if (shortName == null) {
      throw new BuiltValueNullFieldError('Person', 'shortName');
    }
  }

  @override
  Person rebuild(void updates(PersonBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  PersonBuilder toBuilder() => new PersonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Person &&
        id == other.id &&
        lastName == other.lastName &&
        firstName == other.firstName &&
        shortName == other.shortName;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), lastName.hashCode), firstName.hashCode),
        shortName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Person')
          ..add('id', id)
          ..add('lastName', lastName)
          ..add('firstName', firstName)
          ..add('shortName', shortName))
        .toString();
  }
}

class PersonBuilder implements Builder<Person, PersonBuilder> {
  _$Person _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _lastName;
  String get lastName => _$this._lastName;
  set lastName(String lastName) => _$this._lastName = lastName;

  String _firstName;
  String get firstName => _$this._firstName;
  set firstName(String firstName) => _$this._firstName = firstName;

  String _shortName;
  String get shortName => _$this._shortName;
  set shortName(String shortName) => _$this._shortName = shortName;

  PersonBuilder();

  PersonBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _lastName = _$v.lastName;
      _firstName = _$v.firstName;
      _shortName = _$v.shortName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Person other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Person;
  }

  @override
  void update(void updates(PersonBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Person build() {
    final _$result = _$v ??
        new _$Person._(
            id: id,
            lastName: lastName,
            firstName: firstName,
            shortName: shortName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

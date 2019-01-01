import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'person.g.dart';

abstract class Person implements Built<Person, PersonBuilder> {
  static Serializer<Person> get serializer => _$personSerializer;

  Person._();

  String get id;

  String get lastName;

  @nullable
  String get firstName;

  String get shortName;

  factory Person([updates(PersonBuilder b)]) = _$Person;
}

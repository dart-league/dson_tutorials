// GENERATED CODE - DO NOT MODIFY BY HAND

part of dson_02;

// **************************************************************************
// Generator: InitMirrorsGenerator
// Target: library dson_02
// **************************************************************************

_initMirrors() {
  initClassMirrors({Person: PersonClassMirror});
  initFunctionMirrors({});
}

// **************************************************************************
// Generator: DsonGenerator
// Target: class Person
// **************************************************************************

abstract class _$PersonSerializable extends SerializableMap {
  int get id;
  String get firstName;
  String get lastName;
  DateTime get dateOfBirth;
  void set id(int v);
  void set firstName(String v);
  void set lastName(String v);
  void set dateOfBirth(DateTime v);

  operator [](Object key) {
    switch (key) {
      case 'id':
        return id;
      case 'firstName':
        return firstName;
      case 'lastName':
        return lastName;
      case 'dateOfBirth':
        return dateOfBirth;
    }
    throwFieldNotFoundException(key, 'Person');
  }

  operator []=(Object key, value) {
    switch (key) {
      case 'id':
        id = value;
        return;
      case 'firstName':
        firstName = value;
        return;
      case 'lastName':
        lastName = value;
        return;
      case 'dateOfBirth':
        dateOfBirth = value;
        return;
    }
    throwFieldNotFoundException(key, 'Person');
  }

  get keys => PersonClassMirror.fields.keys;
}

_Person__Constructor(params) => new Person();

const $$Person_fields_id = const DeclarationMirror(type: int);
const $$Person_fields_firstName = const DeclarationMirror(type: String);
const $$Person_fields_lastName = const DeclarationMirror(type: String);
const $$Person_fields_dateOfBirth = const DeclarationMirror(type: DateTime);

const PersonClassMirror =
    const ClassMirror(name: 'Person', constructors: const {
  '': const FunctionMirror(parameters: const {}, call: _Person__Constructor)
}, fields: const {
  'id': $$Person_fields_id,
  'firstName': $$Person_fields_firstName,
  'lastName': $$Person_fields_lastName,
  'dateOfBirth': $$Person_fields_dateOfBirth
}, getters: const [
  'id',
  'firstName',
  'lastName',
  'dateOfBirth'
], setters: const [
  'id',
  'firstName',
  'lastName',
  'dateOfBirth'
]);

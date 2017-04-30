library dson_02;

import 'package:serializable/serializable.dart';
import 'package:dson/dson.dart';

part 'main.g.dart';

@serializable
class Person extends _$PersonSerializable {
  int id;
  String firstName;
  String lastName;
  DateTime dateOfBirth;
}

main(List<String> args) {
  _initMirrors();

  var p1 = new Person()
    ..id = 1
    ..firstName = 'first1'
    ..lastName = 'last1'
    ..dateOfBirth = new DateTime(2000, 1, 1);

  var p1Map = toMap(p1);

  var p1Map2 = new Person()..fromMap(p1);

  print(p1Map);
  print(p1Map2);
  print('p1["id"]: ${p1['id']}');
  print('p1Map["id"]: ${p1Map['id']}');
}

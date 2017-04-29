library dson_01;

import 'dart:convert';

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

//  print(JSON.encode(p1, toEncodable: (val) {
//    if (val is DateTime) return val.toIso8601String();
////    else return val.toJson();
//  }));

  print(toJson(p1));
}

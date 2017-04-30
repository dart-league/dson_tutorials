library dson_03;

import 'package:serializable/serializable.dart';
import 'package:dson/dson.dart';

part 'main.g.dart';

@serializable
@cyclical
class Employee extends _$EmployeeSerializable {
  int id;
  String firstName;
  String lastName;

  Address address;

  Employee manager;
}

@serializable
@cyclical
class Address extends _$AddressSerializable {
  int id;
  String street;
  String city;
  String country;
  String postalCode;

  Employee owner;
}

main(List<String> args) {
  _initMirrors();

  var manager = new Employee()
    ..id = 1
    ..firstName = 'Jhon'
    ..lastName = 'Doe';

  manager.address = new Address()
    ..id = 1
    ..street = 'some street'
    ..city = 'Miami'
    ..country = 'USA'
    ..owner = manager;

  print('manager: ${toJson(manager)}');
  print('manager: ${toJson(manager, depth: "address")}');
  print('manager: ${toJson(manager, depth: {"address": "owner"})}');

  var employee = new Employee()
    ..id = 2
    ..firstName = 'Luis'
    ..lastName = 'Vargas'
    ..manager = manager;
  employee.address = new Address()
    ..id = 2
    ..street = 'some street'
    ..city = 'Miami'
    ..country = 'USA'
    ..owner = employee;


  print('employee: ${toJson(employee)}');
  print('employee: ${toJson(employee, depth: "address")}');
  print('employee: ${toJson(employee, depth: ["address", "manager"])}');
  print('employee: ${toJson(employee, depth: ["address", {"manager": "address"}])}');

}

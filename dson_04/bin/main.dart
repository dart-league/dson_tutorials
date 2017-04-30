library dson_04;

import 'package:dson/dson.dart';

part 'main.g.dart';

@serializable
@cyclical
class Student extends _$StudentSerializable {
  int id;
  String name;

  List<Course> courses;
}

@serializable
@cyclical
class Course extends _$CourseSerializable {
  int id;

  DateTime beginDate;

  List<Student> students;
}

main(List<String> args) {
  _initMirrors();

  var student1 = new Student()
    ..id = 1
    ..name = 'student1',
      student2 = new Student()
        ..id = 2
        ..name = 'student2',
      student3 = new Student()
        ..id = 3
        ..name = 'student3',
      course1 = new Course()
        ..id = 1
        ..beginDate = new DateTime.utc(2015, 1, 1)
        ..students = [student1, student2],
      course2 = new Course()
        ..id = 2
        ..beginDate = new DateTime.utc(2015, 1, 2)
        ..students = [student2, student3],
      course3 = new Course()
        ..id = 3
        ..beginDate = new DateTime.utc(2015, 1, 3)
        ..students = [student1, student3];

  student1.courses = [course1, course3];
  student2.courses = [course1, course2];
  student3.courses = [course2, course3];

  var students = [student1, student2, student3];

  print('students: ${toJson(students)}');
  print('students: ${toJson(students, depth: "courses")}');


  print('student1.courses: ${toJson(student1.courses)}');
  print('student1.courses: ${toJson(student1.courses, depth: "students")}');

}

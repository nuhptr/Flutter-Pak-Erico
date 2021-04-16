import 'package:equatable/equatable.dart';

class BasePerson {}

// todo: Jika tidak extend ke kelas manapun cukup gunakan equatable
// tetapi jika extends kelas lain bisa gunakan EquatableMixin

class Person extends BasePerson with EquatableMixin {
  String name;
  int age;

  Person({this.name = "no name", this.age = 0});

  @override
  List<Object> get props => [name, age];
}

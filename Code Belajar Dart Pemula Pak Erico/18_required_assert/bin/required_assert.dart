import 'package:meta/meta.dart';

void main(List<String> arguments) {
  var p;

  try {
    p = Person(name: null);
  } catch (e) {
    print(e);
  }

  print(p.name); // error you must give name
}

class Person {
  final String name;
  final int age;

  Person({@required this.name, this.age = 0}) {
    assert(name != null, 'you must give the name');
  }
}

// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:latihan_56_equatable/person.dart';

void main() {
  Person p = Person(name: "Doni", age: 10);

  if (p == Person(name: "Doni", age: 10)) {
    print("sama");
  } else {
    print("tidak sama");
  }

  List<Person> persons = [p];
  if (persons.contains(Person(name: "Doni", age: 10))) {
    print("ada");
  } else {
    print("tidak ada");
  }
}

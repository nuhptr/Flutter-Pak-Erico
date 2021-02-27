import 'person.dart';

class Student extends Person {
  Student({String studentName = 'No Student Name'}) : super(name: studentName) {
    print('student');
  }
}

// ignore: avoid_relative_lib_imports
import '../lib/person.dart';

void main(List<String> arguments) {
  var p = Person('Adi', doingHobby: doingHobby);

  p.takeARest();
}

// bisa menggunakan underscore untuk menghiraukan parameter
void doingHobby(_) {
  print('he is running');
}

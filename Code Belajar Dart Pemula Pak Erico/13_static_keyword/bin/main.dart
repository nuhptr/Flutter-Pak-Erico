import 'person.dart';

void main(List<String> arguments) {
  var p = Person('Adi', 150);

  print('''
  ${p.age}
  ${p.name}
  ''');
}

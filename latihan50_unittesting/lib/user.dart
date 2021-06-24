import 'dart:math';

class User {
  String? name;
  int? _age;
  List<int>? luckNumber;

  // TODO: default value
  User() {
    name = 'no name';
    age = 0;
    luckNumber = [];
    Random r = Random();
    for (var i = 0; i < 3; i++) {
      luckNumber!.add(r.nextInt(11));
    }
  }

  int get age => _age!;
  set age(int value) {
    if (value < 0) {
      value *= -1;
    }

    _age = value;
  }
}

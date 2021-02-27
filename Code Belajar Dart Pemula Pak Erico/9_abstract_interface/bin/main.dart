import 'monster/kecoa.dart';
import 'monster/monster.dart';
import 'monster/ubur-ubur.dart';
import 'monster/ucoa.dart';

void main(List<String> arguments) {
  var monster = <Monster>[Kecoa(), Ubur()];

  for (var m in monster) {
    print(m.move());
  }

  print('===================');

  for (var mons in monster) {
    print(mons.eatHuman());
  }

  print('===============');
  var ucoa = Ucoa();
  print(ucoa.fly());
}

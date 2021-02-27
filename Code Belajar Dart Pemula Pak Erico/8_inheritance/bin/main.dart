// ignore: avoid_relative_lib_imports
import 'package:inheritance/hero/hero.dart';
import 'package:inheritance/monster/kecoa.dart';
import 'package:inheritance/monster/monster.dart';
import 'package:inheritance/monster/ubur-ubur.dart';

void main(List<String> arguments) {
  // ignore: unused_local_variable
  var h = Hero();
  // ignore: unused_local_variable
  var m = Monster();

  Monster monster = Ubur();
  var monsters = <Monster>[Kecoa(), Ubur()];

  // print(u.eatHuman());

  // lebih baik menggunakan ini
  for (var m in monsters) {
    if (m is Ubur) {
      // jika ingin hanya monster ubur-ubur
      print(m.swim());
    }
    ; // akan mencetak eat a human sebanyak kelas turunan Monster
  }

  // lebih baik gunakan yang perulangan for
  print((monster as Ubur).swim());
}

import 'monster.dart';

class Ubur extends Monster {
  String swim() => 'ubur-ubur swim';

  @override
  String move() {
    return 'ubur-ubur berenang';
  }

  @override
  String eatHuman() {
    return 'ubur-ubur makan fitoplankton';
  }
}

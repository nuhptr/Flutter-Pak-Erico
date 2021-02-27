import '../flying_monster.dart';
import 'monster.dart';

class Kecoa extends Monster implements FlyingMonster {
  @override
  String fly() => 'Kecoa fly';

  @override
  String move() {
    return 'kecoa terbang';
  }

  @override
  String eatHuman() {
    return 'kecoa makan plankton';
  }
}

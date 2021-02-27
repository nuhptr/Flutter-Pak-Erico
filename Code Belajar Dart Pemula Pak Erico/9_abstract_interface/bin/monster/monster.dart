import '../character/character.dart';

abstract class Monster extends Character {
  String eatHuman() => 'eat a human';
  String move();
}

import 'abbility.dart';
import 'character.dart';

import 'people_skill.dart';

class People extends Karakter with Abbility implements Skill {
  @override
  String dringk() {
    return 'people can drink';
  }

  @override
  String walk() {
    return 'people walk';
  }
}

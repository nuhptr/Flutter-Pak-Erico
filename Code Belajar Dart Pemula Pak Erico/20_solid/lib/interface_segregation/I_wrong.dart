/// Wrong
/// banyak sekali fungsi yang ada dalam kelas tapi tidak
/// digunakan sesuai kebutuhan sehingga useless/ bad code

abstract class IHeroAbbility {
  void heal();
  void castMagic();
  void stealMoney();
}

abstract class Hero implements IHeroAbbility {
  void regularAttack();
}

// !--------------------------------------

class Thief extends Hero {
  @override
  void castMagic() {
    // TODO: do nothing
  }

  @override
  void heal() {
    // TODO: do nothing
  }

  @override
  void regularAttack() {
    // TODO: implement regularAttack
  }

  @override
  void stealMoney() {
    // TODO: implement stealMoney
  }
}

// !----------------------------------

class WhiteMage extends Hero {
  @override
  void castMagic() {
    // TODO: implement castMagic
  }

  @override
  void heal() {
    // TODO: implement heal
  }

  @override
  void regularAttack() {
    // TODO: implement regularAttack
  }

  @override
  void stealMoney() {
    // TODO: do nothing
  }
}

// !--------------------------------

class BlackMage extends Hero {
  @override
  void castMagic() {
    // TODO: implement castMagic
  }

  @override
  void heal() {
    // TODO: do Nothing
  }

  @override
  void regularAttack() {
    // TODO: implement regularAttack
  }

  @override
  void stealMoney() {
    // TODO: do nothing
  }
}

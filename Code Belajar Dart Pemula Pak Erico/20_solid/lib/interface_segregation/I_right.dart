/// Right
/// buatlah interface sesuai kebutuhan class tersebut
/// sehingga kelas tersebut tidak harus dipaksa men-override semuanya

abstract class Hero {
  void regularAttack();
}

// !-----------------------------

abstract class IMagicCaster {
  void castMagic();
}

abstract class IHealer {
  void heal();
}

abstract class IStealer {
  void stealMoney();
}

// !-----------------------------

// jadi kelas thief hanya akan men-override 2 fungsi yang memang dibutuhkan
class Thief extends Hero implements IStealer {
  @override
  void regularAttack() {
    // TODO: implement regularAttack
  }

  @override
  void stealMoney() {
    // TODO: implement stealMoney
  }
}

// !-------------------------------

class WhiteMage extends Hero implements IHealer, IMagicCaster {
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
}

// !-------------------------------

class BlackMage extends Hero implements IMagicCaster {
  @override
  void castMagic() {
    // TODO: implement castMagic
  }

  @override
  void regularAttack() {
    // TODO: implement regularAttack
  }
}

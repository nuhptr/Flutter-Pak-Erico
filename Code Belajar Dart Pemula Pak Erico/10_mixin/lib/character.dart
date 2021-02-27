class Karakter {
  int _hp;

  set healthPoint(int value) {
    if (value < 0) {
      value = 0;
    }
    _hp = value;
  }

  int get healthPoint {
    return _hp;
  }
}

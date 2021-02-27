class Character {
  int _healtPoint;

  // cara getter setter kedua
  set healtPoint(int value) {
    if (value < 0) {
      value = 0;
    }
    _healtPoint = value;
  }

  int get healtPoint => _healtPoint;
}

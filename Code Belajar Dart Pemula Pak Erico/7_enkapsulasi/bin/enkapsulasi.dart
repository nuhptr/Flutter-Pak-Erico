// cara pertama getter setter
class Lingkaran {
  final double _phi = 3.14;
  double _r;

  double hitungLuas() {
    return getPhi() * _r * _r;
  }

  double get luas => hitungLuas();

  // mengantisipasi masukan value jari-jari negatif
  void setJari(double value) {
    if (value < 0) {
      value *= -1;
    }
    _r = value;
  }

  // getter
  double getPhi() {
    return _phi;
  }
}

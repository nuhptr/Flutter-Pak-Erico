void main(List<String> arguments) {
  // jika di angka
  var a = 10;
  var b = 20;
  // print(a + b); // 30

  // tapi apa jadinya kalo di string
  var aku = 'kamu ';
  var dia = 'gak';
  // print(aku + dia); => kamu gak

  var ampas = Hero(10);
  var over = Hero(10);

  print((ampas + over).power); // 30
  print(ampas == over);
}

class Hero {
  final int power;

  Hero(this.power);

  // overriding operator
  Hero operator +(var other) {
    if (other is Hero) {
      return Hero(power + other.power);
    } else if (other is int) {
      return Hero(power + other);
    } else {
      return this;
    }
  }

  @override
  bool operator ==(var other) {
    if (other is Hero) {
      if (other.power == power) {
        return true;
      }
    }
    return false;
  }

  @override
  bool operator >(var other) {
    if (other is Hero) {
      if (power > other.power) {
        return true;
      }
    }
    return false;
  }
}

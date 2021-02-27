import 'dart:io';

void main(List<String> arguments) {
  var kotak1;

  kotak1 = PersegiPanjang();
  kotak1.panjang = double.tryParse(stdin.readLineSync());
  kotak1.lebar = double.tryParse(stdin.readLineSync());
  print(kotak1.hitungLuas());
}

class PersegiPanjang {
  double panjang;
  double lebar;

  double hitungLuas() {
    return panjang * lebar;
  }
}

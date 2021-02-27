import 'dart:io';

import 'enkapsulasi.dart';

void main(List<String> args) {
  var lingkaran;

  lingkaran = Lingkaran();
  lingkaran.setJari(double.tryParse(stdin.readLineSync()));
  var luas = lingkaran.luas();

  print(luas);
}

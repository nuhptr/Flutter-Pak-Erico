import 'dart:io';

void main(List<String> arguments) {
  print('input your name: ');
  var input = stdin.readLineSync();
  print('Namamu adalah: ' + input);
  // mencetak namamu di console

  // mencoba dengan angka
  print('Masukan angka: ');
  var number = stdin.readLineSync();
  var angka = int.tryParse(number);
  print('totalnya adalah: ${angka + 10}');
}

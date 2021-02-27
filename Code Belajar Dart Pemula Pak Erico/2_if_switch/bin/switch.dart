import 'dart:io';

void main(List<String> args) {
  print('Masukan nomor 1/2/3: ');
  var number = int.tryParse(stdin.readLineSync());

  switch (number) {
    case 0:
      print('Nol');
      break;
    case 1:
      print('Number satu');
      break;
    case 2:
      print('number two');
      break;
    default:
      print('Other number');
  }
}

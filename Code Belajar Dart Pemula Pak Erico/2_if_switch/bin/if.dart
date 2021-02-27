import 'dart:io';

void main(List<String> arguments) {
  print('Input your number: ');
  // ignore: omit_local_variable_types
  int number = int.tryParse(stdin.readLineSync());
  String output;

  if (number > 0) {
    output = 'positif';
  } else if (number < 0) {
    output = 'negatif';
  } else {
    output = 'nol';
  }

  print(output);
}

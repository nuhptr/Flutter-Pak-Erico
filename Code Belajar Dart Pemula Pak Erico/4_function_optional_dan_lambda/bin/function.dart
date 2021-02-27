import 'dart:io';

void main(List<String> arguments) {
  double p, l, luas;

  p = double.tryParse(stdin.readLineSync());
  l = double.tryParse(stdin.readLineSync());

  luas = luas_segiempat(p, l);
  print(luas);

  sapa_penonton();
}

// mengembalikan sebuat nilai berbentuk double
double luas_segiempat(double panjang, double lebar) {
  return panjang * lebar;
}

// void yang tidak mengembalikan nilai apapun
void sapa_penonton() {
  print('Hello penonton');
}

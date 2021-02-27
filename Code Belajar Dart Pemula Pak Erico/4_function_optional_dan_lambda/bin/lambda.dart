void main(List<String> args) {
  var luas1 = luas_segiempat(20.0, 20.0);
  print(luas1);
  // 400.0

  Function f; // function in variable
  f = luas_segiempat;
  print(f(2.0, 3.0));
}

double luas_segiempat(double param1, double param2) => param1 * param2;

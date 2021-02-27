void main(List<String> args) {
  print(doMathOperator(1, 2, (int num1, int num2) => num1 + num2));
}

// artinya function mathFunction harus menerima 2 parameter
// bertipe integer semua
int doMathOperator(int a, b, Function(int, int) mathFunction) {
  return mathFunction(a, b);
}

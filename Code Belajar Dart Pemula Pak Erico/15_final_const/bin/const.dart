void main(List<String> args) {
  var a = const ConstClass(number: 5);
  var b = const ConstClass(number: 5);

  print(identical(a, b)); // true
}

class RegularClass {
  final int number;
  // static make a variable is only have that class.
  static const myConst = 13.0;

  RegularClass({this.number}) {
    // ignore: unused_local_variable
    const anotherConst = 10;
  }
}

class ConstClass {
  final int number;

  const ConstClass({this.number});
}

void main(List<String> args) {
  var myList = <int>[1, 1, 2, 4, 6, 6, 2];
  var list = <String>[];

  list = myList.map((number) => 'angka ' + number.toString()).toList();

  for (var number in list) {
    print(number);
  }
}

// angka 1 - angka 2 (indeks terakhir)

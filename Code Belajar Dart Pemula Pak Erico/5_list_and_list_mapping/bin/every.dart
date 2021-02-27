void main(List<String> args) {
  var myList = <int>[8, 9, 6, 5, 4, 4, 3, 2];

  // menghapus nilai genap dahulu
  myList.removeWhere((n) => n % 2 == 0);

  // ketika dicek dengan every, apakah ganjil semua
  if (myList.every((number) => number % 2 != 0)) {
    print('semua ganjil');
  } else {
    print('tidak semua ganjil');
  }
}

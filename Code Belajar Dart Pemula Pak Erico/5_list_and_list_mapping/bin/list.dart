void main(List<String> arguments) {
  var myList = <int>[];
  var list = <int>[1, 2, 3];

  // list[0] = 10; => berubah menjadi 10 dari 1
  // var e = list[0];
  // print(e); // 1

  // jika ingin menampilkan isi semua list
  for (var bilangan in list) {
    print(bilangan);
  }

  print('=====================');

  // cara lain
  list.forEach((bilangan) {
    print(bilangan);
  });

  print('===================');

  // menambahkan value kedalam list
  myList.add(10);

  // myList.addAll(list); -> menambahkan list dalam bentuk function
  myList.insert(1, 4); // menambahkan nilai 4 di index 1

  // menambahkan list value [10,20,30] di dindex kedua dan seterusnya
  myList.insertAll(2, [10, 20, 30]);

  // menghapus nilai dalam sebuah list
  // jika ada 2 nilai yang sama makan nilai index awal lah yang dihapus
  myList.remove(10);

  // menghapus nilai terakhir
  myList.removeLast();

  // menghapus index beserta nilainya dalam sebuah list
  myList.removeAt(0);

  // menghapus list berdasarkan range
  // 1 sebagai indeks awal
  // dan 3 sebagai indeks akhir sekaligus pembatas
  myList.removeRange(1, 3);

  // where disini membuatmu memberikan sebuah syarat untuk dihapus
  myList.removeWhere((number) => number % 2 == 0);
  print(myList);
}

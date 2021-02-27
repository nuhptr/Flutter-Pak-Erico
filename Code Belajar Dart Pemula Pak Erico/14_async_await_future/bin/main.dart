void main(List<String> arguments) async {
  var p = Person();
  print('job 1');
  print('job 2');
  await p.getAsyncData().then((_) {
    print('job 3: ' + p.name);
  }); // jika tidak menggunakan await maka tidak akan ditunggu (asynchronous)
  print('job 4');

  /**
   * job 1
   * job 2
   * job 4
   * get data joko
   * job 3 : Joko */
}

class Person {
  String name = 'default name';

  void getData() {
    name = 'Joko'; // misal ambil dari database
    print('get data joko');
  }

  // berjalan secara asynchronous
  Future<void> getAsyncData() async {
    await Future.delayed(Duration(seconds: 3));
    name = 'Joko'; // misal ambil dari database
    print('get data joko');
  }
}

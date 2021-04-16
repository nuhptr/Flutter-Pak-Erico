import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:latihan_55_mockito/warior.dart';

class MockWarior extends Mock implements Warior {}

void main() {
  //! yang ada didalam mockWarior semuanya null
  MockWarior mockWarior = MockWarior();

  // todo: verify
  // digunakan untuk memverifikasi apakah suatu method dipanggil
  // atau tidak
  test("Verifiy Demo", () {
    mockWarior.rest();
    mockWarior.rest();
    verify(mockWarior.rest()).called(2);
  });

  // todo: verifyInOrder
  // mentest dalam lingkung order
  test("Verifiy in order", () {
    mockWarior.rest();
    mockWarior.training();
    verifyInOrder([mockWarior.rest(), mockWarior.training()]);
  });

  // todo: memberikan nilai sebelum di test
  test("thenReturn demo", () {
    when(mockWarior.name).thenReturn("no name");
    expect(mockWarior.name, equals("no name"));
  });

  // todo: thenThrow untuk mengembalikan exception
  test("thenThrow demo", () {
    when(mockWarior.rest()).thenThrow(Exception("No Method"));
    expect(() => mockWarior.rest(), throwsException);
  });

  // todo: thenAnswer untuk mengembalikan nilai
  test("thenAnswer demo", () async {
    when(mockWarior.training()).thenAnswer((_) => Future.value(true));
    bool result = await mockWarior.training();
    expect(result, equals(true));
  });
}

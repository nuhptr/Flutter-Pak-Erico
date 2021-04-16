import 'package:flutter_test/flutter_test.dart';
import 'package:latihan_54_unit_testing/person.dart';

void main() {
  Person p = new Person();
  test("Inisialisasi Object Person", () {
    expect(p.name, equals("no name"));
  });

  test("age harus postif", () {
    p.age = -5;
    expect(p.age, isPositive);
  });

  // todo: failed
  test("angka keberuntungan harus 3 buah bilangan positif", () {
    expect(p.luckyNumbers,
        allOf([hasLength(equals(3)), isNot(anyElement(isNegative))]));
  });
}

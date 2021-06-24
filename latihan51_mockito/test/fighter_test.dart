import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:latihan51_mockito/fighter.dart';

// TODO: create mock class implement the real class
class FighterMock extends Mock implements Fighter {}

void main() {
  var fighter = FighterMock();

  // TODO: test 1
  test("verify rest function", () {
    fighter.rest();
    verify(fighter.rest());
  });

  // TODO: test 2
  test("verify training function", () {
    fighter.training();
    verify(fighter.training());
  });

  // TODO: test 3
  test("null test", () {
    expect(fighter.name, isNull);
  });

  // TODO: test 4
  test("thenReturn value", () {
    //* buat pernyataan gini lalu buat expect
    when(fighter.name).thenReturn("name");
    expect(fighter.name, equals("name"));
  });

  // TODO: test 5
  test("then throw", () {
    when(fighter.rest()).thenThrow(Exception("can't sleep"));
    expect(() => fighter.rest(), throwsException);
  });
}

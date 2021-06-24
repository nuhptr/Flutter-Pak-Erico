import 'package:flutter_test/flutter_test.dart';

import 'package:latihan50_unittesting/user.dart';

void main() {
  var p = User();

  // TODO: create test person -> passed
  group('Check class User', () {
    test('Initialized object user', () {
      expect(p.name, equals('no name'));
      expect(p.age, equals(0));
    });

    // TODO: test check isNegative
    test('age must positive', () {
      p.age = -5;
      expect(p.age, isPositive);
    });

    // TODO: test luck number must 3 postif number
    test('luck number test', () {
      expect(
          p.luckNumber,
          allOf(
            [hasLength(equals(3)), isNot(anyElement(isNegative))],
          ));
    });
  });
}

import 'package:flutter_test/flutter_test.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'package:latihan52_equatable/user.dart';

void main() {
  var u = User(name: "Adi", age: 21);

  if (u == User(name: "Adi", age: 21)) {
    print("sama");
  } else {
    print("tidak sama");
  }
}

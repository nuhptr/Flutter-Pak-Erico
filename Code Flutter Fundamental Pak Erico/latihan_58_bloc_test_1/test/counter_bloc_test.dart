// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:latihan_58_bloc_test_1/bloc/counter_bloc.dart';

void main() {
  group("Testing counter bloc", () {
    blocTest(
      "inisiasi counter bloc",
      build: () => CounterBloc(),
      expect: [],
    );

    blocTest("add event",
        build: () => CounterBloc(),
        act: (bloc) async {
          bloc.add(Add(2));
        },
        expect: [2]);

    blocTest("Decrement event",
        build: () => CounterBloc(),
        act: (bloc) async {
          bloc.add(Decrement(2));
        },
        expect: [-2]);

    blocTest("add dan decrement event",
        build: () => CounterBloc(),
        act: (bloc) async {
          bloc.add(Add(2));
          bloc.add(Decrement(5));
        },
        expect: [2, -3]);
  });
}

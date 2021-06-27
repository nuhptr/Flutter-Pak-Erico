import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';

import 'package:latihan54_bloctest/bloc/counter_bloc.dart';

void main() {
  group("-> bloc", () {
    blocTest(
      "init state",
      build: () => CounterBloc(0),
      expect: () => [],
    );

    // TODO: bloc test add
    blocTest(
      "test Add",
      build: () => CounterBloc(0),
      act: (CounterBloc bloc) async {
        bloc.add(Add(1));
      },
      expect: () => [1],
    );

    // TODO: bloc test minus
    blocTest(
      "test minus ",
      build: () => CounterBloc(0),
      act: (CounterBloc bloc) async {
        bloc.add(Minus(1));
      },
      expect: () => [-1],
    );

    // TODO: bloc test add then minus
    blocTest(
      "test add minus",
      build: () => CounterBloc(0),
      act: (CounterBloc bloc) async {
        bloc.add(Add(1));
        bloc.add(Minus(1));
      },
      expect: () => [1, 0],
    );
  });
}

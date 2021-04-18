import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0);

  @override
  Stream<int> mapEventToState(
    CounterEvent event,
  ) async* {
    // TODO: implement mapEventToState
    if (event is Add) {
      yield state + event.amount;
    } else if (event is Decrement) {
      yield state - event.amount;
    }
  }
}

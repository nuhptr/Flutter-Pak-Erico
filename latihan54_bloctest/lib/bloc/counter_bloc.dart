import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc(int initialState) : super(0);

  @override
  Stream<int> mapEventToState(
    CounterEvent event,
  ) async* {
    // TODO: implement mapEventToState
    if (event is Add) {
      yield state + event.amount!;
    } else {
      yield state - event.amount!;
    }
  }
}

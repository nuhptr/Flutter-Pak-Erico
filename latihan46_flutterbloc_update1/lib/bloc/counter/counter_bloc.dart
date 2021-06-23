import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0));

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    // TODO: implement mapEventToState
    if (event is Increment) {
      yield CounterState(state.number! + 1);
    } else {
      yield CounterState(state.number! - 1);
    }
  }
}

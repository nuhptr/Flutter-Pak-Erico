import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<int, int> {
  CounterBloc(int initialState) : super(initialState);

  @override
  Stream<int> mapEventToState(int? event) async* {
    // TODO: implement mapEventToState
    yield event!;
  }
}

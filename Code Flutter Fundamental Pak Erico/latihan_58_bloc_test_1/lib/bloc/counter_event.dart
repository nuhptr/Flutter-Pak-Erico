part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {
  final int amount;

  CounterEvent(this.amount);
}

class Add extends CounterEvent {
  Add(int amount) : super(amount);
}

class Decrement extends CounterEvent {
  Decrement(int amount) : super(amount);
}

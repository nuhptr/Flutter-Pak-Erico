part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {
  int? amount;

  CounterEvent(this.amount);
}

class Add extends CounterEvent {
  Add(int? amount) : super(amount);
}

class Minus extends CounterEvent {
  Minus(int? amount) : super(amount);

  int get getAmount => amount!;
  set getAmount(int? value) {
    if (value == 0) {
      amount = 0;
    }
    amount = value!;
  }
}

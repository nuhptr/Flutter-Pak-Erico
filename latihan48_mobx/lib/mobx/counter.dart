import 'package:mobx/mobx.dart';
part 'counter.g.dart';

class CounterMobx = _CounterMobx with _$CounterMobx;

// TODO: create abstract class implemen mixin Store
abstract class _CounterMobx with Store {
  @observable
  int? value = 0;

  // TODO: action function
  @action
  void increment() {
    value = value! + 1;
  }

  // TODO: action function
  @action
  void decrement() {
    if (value! == 0) {
      value = 0;
    } else {
      value = value! - 1;
    }
  }
}

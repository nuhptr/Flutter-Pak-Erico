/// Wrong

class Duck {
  void swim() {
    // ..
  }

  void quack() {
    // ...
  }

  void eat() {
    // ...
  }
}

// tidak bagus karena RubberDuck tidak bisa makan
class RubberDuck extends Duck {
  @override
  void eat() {
    // do nothing
  }
}

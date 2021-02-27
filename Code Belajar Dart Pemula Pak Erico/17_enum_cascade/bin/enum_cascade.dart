void main(List<String> arguments) {
  var kecoa = MonsterUcoa(status: KecoaStatus.dying);
  print('cek conditional');
  kecoa
    ..move() // cascade
    ..eat();
}

// enum class to inform status
enum KecoaStatus { normal, poisoned, dying }

class MonsterUcoa {
  final KecoaStatus status;
  MonsterUcoa({this.status = KecoaStatus.normal});

  void move() {
    switch (status) {
      case KecoaStatus.normal:
        print('Kecoa moving');
        break;
      case KecoaStatus.poisoned:
        print('kecoa keracunan woi');
        break;
      case KecoaStatus.dying:
        print('kecoa wanna die');
        break;
      default:
    }
  }

  void eat() => print('kecoa eat');
}

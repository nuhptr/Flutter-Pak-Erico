import 'package:flutter/cupertino.dart';

class TimeState with ChangeNotifier {
  int _time = 15;

  ///? untuk mendapatkan nilai time
  // ignore: unnecessary_getters_setters
  int get time => _time;

  ///? untuk menset time baru
  // ignore: unnecessary_getters_setters
  set time(int newTime) {
    _time = newTime;
  }

  @override
  void notifyListeners() {
    super.notifyListeners();
  }
}

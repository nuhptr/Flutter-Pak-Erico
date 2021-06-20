import 'package:flutter/material.dart';

class TimeProvider extends ChangeNotifier {
  int? _time = 15;

  int get time => _time!;
  set time(int? newTime) {
    _time = newTime;
  }

  @override
  void notifyListeners();
}

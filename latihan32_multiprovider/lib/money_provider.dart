import 'package:flutter/material.dart';

class Money extends ChangeNotifier {
  // TODO: properties class
  int? _money = 100000;

  int? get balance => _money;
  set balance(int? value) {
    _money = value;
    // TODO: jangan lupa sertakan ini ketika menggunakan provider
    notifyListeners();
  }
}

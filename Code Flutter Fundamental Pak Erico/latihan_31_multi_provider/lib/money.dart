import 'package:flutter/material.dart';

class Money with ChangeNotifier {
  int _balance = 100000;

  int get balance => _balance;
  set balance(int value) {
    _balance = value;
    notifyListeners();
  }
}

import 'package:flutter/material.dart';

class ProductProvider extends ChangeNotifier {
  int? _quantity = 0;

  int? get quantity => _quantity;
  set quantity(int? value) {
    _quantity = value;
    notifyListeners();
  }
}

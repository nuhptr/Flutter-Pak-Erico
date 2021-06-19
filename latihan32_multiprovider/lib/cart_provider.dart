import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // TODO: properties class
  int? _amount = 0;

  int? get amount => _amount;
  set amount(int? value) {
    _amount = value;
    // TODO: sertakan ini ketika membuat model provider
    notifyListeners();
  }
}

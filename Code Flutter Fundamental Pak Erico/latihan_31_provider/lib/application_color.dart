import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class ApplicationColor with ChangeNotifier {
  bool _isLigthblue = true;

  bool get isLightBlue => _isLigthblue;
  set isLightBlue(bool value) {
    _isLigthblue = value;
    notifyListeners();
  }

  Color get color => (_isLigthblue) ? Colors.lightBlue : Colors.amber;
}

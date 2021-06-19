import 'package:flutter/material.dart';

class ColorProvider extends ChangeNotifier {
  // TODO: properties class
  bool? _isLightBlue = false;

  bool get isLightBlue => _isLightBlue!;

  set isLightBlue(bool value) {
    _isLightBlue = value;
    // TODO: jangan lupa sertakan notify listener ketika menggunakan provider
    notifyListeners();
  }

  Color? get color => (isLightBlue) ? Colors.blue[300] : Colors.amber;
}

import 'package:flutter/material.dart';

class themeManager with ChangeNotifier {
  bool _mode = false;

  bool get mode => _mode;

  void changeMode() {
    _mode = !_mode;
    notifyListeners();
  }
}

import 'package:flutter/material.dart';

class AppTheme extends ChangeNotifier {
  bool _isDarkModeEnabled = false;

  bool get isDarkModeEnabled => _isDarkModeEnabled;

  void toggleDarkMode(bool value) {
    _isDarkModeEnabled = value;
    notifyListeners();
  }

  ThemeData getThemeData() {
    return _isDarkModeEnabled ? ThemeData.dark() : ThemeData.light();
  }
}

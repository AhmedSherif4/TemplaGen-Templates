import 'package:flutter/material.dart';

import 'theme_manager.dart';


class DarkTheme with SubThemeData {
  static ThemeData buildDarkTheme() {
    final ThemeData systemDarkTheme = ThemeData.dark();
    return systemDarkTheme.copyWith();
  }
}

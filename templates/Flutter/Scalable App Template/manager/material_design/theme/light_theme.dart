import 'package:flutter/material.dart';

import 'theme_manager.dart';

class LightTheme with SubThemeData {
  static ThemeData buildLightTheme() {
    final ThemeData systemLightTheme = ThemeData.light();
    return systemLightTheme.copyWith();
  }
}

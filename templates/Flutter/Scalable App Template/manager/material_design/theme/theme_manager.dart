import 'package:flutter/material.dart';
import 'package:quizzy/manager/material_design/theme/dark_theme.dart';
import 'light_theme.dart';

enum AppTheme { light, dark }

final Map<AppTheme, ThemeData> appThemeData = {
  AppTheme.light: LightTheme.buildLightTheme(),
  AppTheme.dark: DarkTheme.buildDarkTheme(),
};

// class for sharing themes that duplicate with light and dark mode.
mixin SubThemeData {}

extension AppThemeX on AppTheme {
  bool get isLight => this == AppTheme.light;
  bool get isDark => this == AppTheme.dark;
}



/*
Display
Headline
Title
Label
Body
*/
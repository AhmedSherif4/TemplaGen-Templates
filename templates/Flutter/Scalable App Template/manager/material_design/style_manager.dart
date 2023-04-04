import 'package:flutter/material.dart';
import '../../application/app_preferences.dart';
import '../../application/dependency_injection.dart';
import 'color_manager.dart';
import 'font_manager.dart';
import '../localization/language_manager.dart';

class StyleManager {
  final AppPreferences _appPreferences = instance<AppPreferences>();

  bool isEnglish() {
    return (_appPreferences.getAppLanguage() == LanguageType.english.getValue());
  }

  TextStyle _getTextStyle({
    Color? color,
    double fontSize = 12,
    required fontWeight,
  }) {
    bool isDark = _appPreferences.getThemeMode();
    Color defaultColor = isDark ? ColorManager.white : ColorManager.black;
    return TextStyle(
      color: color ?? defaultColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: isEnglish()
          ? FontConstants.englishFontFamilyName
          : FontConstants.arabicFontFamilyName,
    );
  }

  TextStyle getRegularStyle({
    Color? color,
    double fontSize = 12,
  }) {
    return _getTextStyle(
        color: color,
        fontWeight: FontWeightManager.regular,
        fontSize: fontSize);
  }

  TextStyle getBoldStyle({
    Color? color,
    double fontSize = 12,
  }) {
    return _getTextStyle(
        color: color, fontWeight: FontWeightManager.bold, fontSize: fontSize);
  }

  TextStyle getMediumStyle({
    Color? color,
    double fontSize = 12,
  }) {
    return _getTextStyle(
        color: color, fontWeight: FontWeightManager.medium, fontSize: fontSize);
  }

  TextStyle getSemiBoldStyle({
    Color? color,
    double fontSize = 12,
  }) {
    return _getTextStyle(
        color: color,
        fontWeight: FontWeightManager.semiBold,
        fontSize: fontSize);
  }

  TextStyle getLightStyle({
    Color? color,
    double fontSize = 12,
  }) {
    return _getTextStyle(
        color: color, fontWeight: FontWeightManager.light, fontSize: fontSize);
  }
}

import 'dart:ui';
import 'package:shared_preferences/shared_preferences.dart';

import '../manager/localization/language_manager.dart';

const String preferenceKeyLanguage = 'preferenceKeyLanguage';
const String preferenceKeyOnBoarding = 'preferenceKeyOnBoarding';
const String preferenceKeyIsUserLoggedIn = 'preferenceKeyIsUserLoggedIn';
const String preferenceKeyDarkThemeModeOn = 'preferenceKeyDarkThemeModeOn';

class AppPreferences {
  final SharedPreferences _sharedPreferences;

  AppPreferences(this._sharedPreferences);

  // for localization
  Future<String> getAppLanguage() async {
    String? language = _sharedPreferences.getString(preferenceKeyLanguage);
    if (language != null && language.isNotEmpty) {
      return language;
    } else {
      // as default language
      return LanguageType.english.getValue();
    }
  }

  Future<void> changeAppLanguage() async {
    String currentLanguage = await getAppLanguage();
    if (currentLanguage == LanguageType.arabic.getValue()) {
      // set English language
      _sharedPreferences.setString(
          preferenceKeyLanguage, LanguageType.english.getValue());
    } else {
      // set Arabic language
      _sharedPreferences.setString(
          preferenceKeyLanguage, LanguageType.arabic.getValue());
    }
  }

  Future<Locale> getLocale() async {
    String currentLanguage = await getAppLanguage();
    if (currentLanguage == LanguageType.arabic.getValue()) {
      // set English language
      return arabicLocale;
    } else {
      // set Arabic language
      return englishLocale;
    }
  }

  // for onBoarding 
  Future<void> setOnBoardingScreenViewed() async {
    _sharedPreferences.setBool(preferenceKeyOnBoarding, true);
  }

  Future<bool> isOnBoardingScreenViewed() async {
    return _sharedPreferences.getBool(preferenceKeyOnBoarding) ?? false;
  }

  // for auth
  Future<void> setIsUserLoggedIn() async {
    _sharedPreferences.setBool(preferenceKeyIsUserLoggedIn, true);
  }

  Future<bool> isUserLoggedIn() async {
    return _sharedPreferences.getBool(preferenceKeyIsUserLoggedIn) ?? false;
  }

  Future<void> logout() async {
    _sharedPreferences.remove(preferenceKeyIsUserLoggedIn);
  }

  // for theme mode
    setThemeMode(bool isDark) {
    _sharedPreferences.setBool(preferenceKeyDarkThemeModeOn, isDark);
  }

  bool getThemeMode() {
    return _sharedPreferences.getBool(preferenceKeyDarkThemeModeOn) ?? false;
  }

}

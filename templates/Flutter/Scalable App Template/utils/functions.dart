import 'package:easy_localization/easy_localization.dart';

import '../manager/string_manager.dart';
import 'reg_exp_manager.dart';

bool isEmailValid(String email) {
  return RegExpPatternsManager.emailRegExpPattern.hasMatch(email);
}

bool isMobileNumberValid(String mobileNumber) {
  return RegExpPatternsManager.mobileNumberRegExpPattern.hasMatch(mobileNumber);
}

bool isUsernameValid(String username) {
  return username.length >= 5;
}

bool isPasswordValid(String password) {
  return password.length > 6;
}

String passwordStrengthCheckerText(inputPassword) {
  String password = '';
  password = inputPassword.trim();
  if (password.isEmpty) {
    return AppStrings.passwordError.tr();
  } else if (password.length < 7) {
    return AppStrings.passwordStrengthIsShort.tr();
  } else if (password.length < 11) {
    return AppStrings.passwordStrengthIsAcceptable.tr();
  } else {
    if (!RegExpPatternsManager.numbersRegExpPattern.hasMatch(password) ||
        !RegExpPatternsManager.lettersRegExpPattern.hasMatch(password)) {
      // Password length >= 8
      // But doesn't contain both letter and digit characters
      return AppStrings.passwordStrengthIsStrong.tr();
    } else {
      // Password length >= 8
      // Password contains both letter and digit characters
      return AppStrings.passwordStrengthIsGreat.tr();
    }
  }
}

double passwordStrengthCheckerDouble(inputPassword) {
  String password = '';
  password = inputPassword.trim();
  if (password.isEmpty) {
    return 0.0;
  } else if (password.length < 7) {
    return 1 / 4;
  } else if (password.length < 11) {
    return 2 / 4;
  } else {
    if (!RegExpPatternsManager.numbersRegExpPattern.hasMatch(password) ||
        !RegExpPatternsManager.lettersRegExpPattern.hasMatch(password)) {
// Password length >= 8
// But doesn't contain both letter and digit characters
      return 3 / 4;
    } else {
// Password length >= 8
// Password contains both letter and digit characters
      return 1.0;
    }
  }
}

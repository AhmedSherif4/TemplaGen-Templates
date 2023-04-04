import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/app_preferences.dart';


part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  final AppPreferences _appPreferences;

  ThemeCubit(this._appPreferences) : super(const ThemeInitial());

  isDark(bool value) {
    _appPreferences.setThemeMode(value);
    emit(const SetTheme());
  }

  bool getThemeMode() {
    return _appPreferences.getThemeMode();
  }
}

/* Widget for it:
BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
            final ThemeCubit cubit = BlocProvider.of<ThemeCubit>(context);
            return 
                IconButton(
                    onPressed: () {
                      cubit.getThemeMode() ? cubit.isDark(false) : cubit.isDark(true);
                    },
                    icon: Icon(
                        cubit.getThemeMode() ? Icons.dark_mode_rounded : Icons.light_mode_rounded));
          }),
           */

/**
 * final ThemeCubit cubit = BlocProvider.of<ThemeCubit>(context);
 * Switch(
                  value: cubit.getThemeMode(),
                  onChanged: (isDark) {
                    cubit.ThemeChanged(switchValue: isDark);
                  },
                )
 */
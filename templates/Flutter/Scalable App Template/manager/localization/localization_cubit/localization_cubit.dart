

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/app_preferences.dart';

part 'localization_state.dart';

class LocalizationCubit extends Cubit<LocalizationState> {
  final AppPreferences _appPreferences;

  LocalizationCubit(this._appPreferences) : super(const LocalizationInitial());

    void changeLocaleEvent() {
    _appPreferences.changeAppLanguage();
    emit(const ChangeLocale());
  }
}

/* Widget for it:
BlocBuilder<LocalizationCubit, LocalizationState>(builder: (context, state) {
            final LocalizationCubit cubit = BlocProvider.of<LocalizationCubit>(context);
            return 
                IconButton(
                    onPressed: () {
                      cubit.changeLocaleEvent();
                      Phoenix.rebirth(context);
                    },
                    icon: const Icon(Icons.translate_rounded));
          }),
 */
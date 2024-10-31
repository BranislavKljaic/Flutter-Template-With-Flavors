import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../../../constants/app_constants.dart';
import '../../../../utils/services/local_storage/shared_preferences_helper.dart';

part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit({String? languageCode, String? theme})
      : super(
          SettingsState(
            languageCode: languageCode,
            theme: theme == AppConstants.LIGHT_THEME
                ? ThemeMode.light
                : theme == AppConstants.DARK_THEME
                    ? ThemeMode.dark
                    : ThemeMode.system,
          ),
        );

  void setLanguageCode(languageCode) {
    SharedPreferencesHelper.setLanguageCode(languageCode);
    emit(SettingsState(languageCode: languageCode));
  }

  void setAppTheme(theme) {
    if (theme == ThemeMode.light) {
      SharedPreferencesHelper.setTheme(AppConstants.LIGHT_THEME);
      emit(state.copyWith(theme: ThemeMode.light));
    } else if (theme == ThemeMode.dark) {
      SharedPreferencesHelper.setTheme(AppConstants.DARK_THEME);
      emit(state.copyWith(theme: ThemeMode.dark));
    }
  }
}

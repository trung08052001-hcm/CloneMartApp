import 'package:clonemartapp/res/themes/app_theme_data.dart';
import 'package:flutter/material.dart';

enum AppStatus {
  initial,
  changingLanguage,
  changeLanguageSuccess,
  changeLanguageFail,
}

class AppState {
  AppState({
    required this.theme,
    this.language = 'en',
    this.status = AppStatus.initial,
  });

  final String language;
  final AppStatus status;
  ThemeData theme;

  AppState copyWith({String? language, AppStatus? status, ThemeData? theme}) {
    return AppState(
        language: language ?? this.language,
        status: status ?? this.status,
        theme: theme ?? this.theme);
  }

  static AppState initState = AppState(theme: AppThemeData.lightTheme);
}

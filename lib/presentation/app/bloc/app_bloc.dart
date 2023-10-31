import 'dart:async';
import 'package:clonemartapp/res/themes/app_theme_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../commom/config/logger_config.dart';
import 'app_event.dart';
import 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppState.initState) {
    logi(message: 'AppInitial');
    on<OnSessionExpiredEvent>(_onSessionExpired);
    on<OnChangeLanguageEvent>(_onLanguageChange);
    on<ChangeThemeEvent>(_changedThemeEvent);
  }

  FutureOr<void> _onSessionExpired(
      OnSessionExpiredEvent event, Emitter<AppState> emit) {
    logi(message: 'Token has Expired');
  }

  FutureOr<void> _onLanguageChange(
      OnChangeLanguageEvent event, Emitter<AppState> emit) async {
    final String language = state.language == event.language ? 'en' : 'vi';

    emit(state.copyWith(
        language: language, status: AppStatus.changeLanguageSuccess));
  }

  Future<void> _changedThemeEvent(
      ChangeThemeEvent event, Emitter<AppState> emit) async {
    state.theme = (state.theme == AppThemeData.lightTheme)
        ? AppThemeData.darkTheme
        : AppThemeData.lightTheme;
    currentAppTheme = state.theme;
    emit(state.copyWith());
  }
}

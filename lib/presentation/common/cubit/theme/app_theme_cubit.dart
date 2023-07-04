import 'package:blinx/domain/preferences/app_preferences.dart';
import 'package:blinx/injection/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_theme_cubit.freezed.dart';
part 'app_theme_state.dart';

@injectable
class AppThemeCubit extends Cubit<AppThemeState> {
  AppThemeCubit()
      : super(
          const AppThemeState(themeMode: ThemeMode.dark),
        );

  void getTheme() {
    final appPreferences = injector.get<AppPreferences>();
    final isDarkTheme = appPreferences.isDarkThemeEnabled;
    toggleSystemUIOverlay(isDarkTheme);
    emit(
      state.copyWith(
        themeMode: isDarkTheme ? ThemeMode.dark : ThemeMode.light,
      ),
    );
  }

  void toggleTheme() {
    final appPreferences = injector.get<AppPreferences>();
    toggleSystemUIOverlay(state.themeMode != ThemeMode.dark);
    if (state.themeMode == ThemeMode.dark) {
      appPreferences.setDarkThemeEnabled(false);
      return emit(state.copyWith(themeMode: ThemeMode.light));
    } else {
      appPreferences.setDarkThemeEnabled(true);
      return emit(state.copyWith(themeMode: ThemeMode.dark));
    }
  }

  void toggleSystemUIOverlay(bool isDarkTheme) {
    if (isDarkTheme) {
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ));
    } else {
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ));
    }
  }
}

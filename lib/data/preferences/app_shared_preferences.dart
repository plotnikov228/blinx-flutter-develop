import 'package:blinx/domain/preferences/app_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// This class handles some app state.

class AppSharedPreferences implements AppPreferences {
  AppSharedPreferences(this._preferences);

  static const String prefix = 'app';
  static const String _appOpenCount = '${prefix}_open_count_key';
  static const String _darkTheme = '${prefix}_dark_theme';
  static const String _appLanguage = '${prefix}_appLanguage';
  static const String _contentLanguage = '${prefix}_content_language';
  static const String _autoLoop = '${prefix}_autoLoop';
  static const String _onMute = '${prefix}_onMute';

  final SharedPreferences _preferences;

  @override
  Future<void> clearAll() => _preferences.remove(_appOpenCount);

  @override
  int get getAppOpenCount => _preferences.getInt(_appOpenCount) ?? 0;

  @override
  bool get isFirstAppOpen => getAppOpenCount == 0;

  @override
  Future setAppOpenCount(int appOpenCount) =>
      _preferences.setInt(_appOpenCount, appOpenCount);

  @override
  bool get isDarkThemeEnabled => _preferences.getBool(_darkTheme) ?? true;

  @override
  Future<void> setDarkThemeEnabled(bool value) =>
      _preferences.setBool(_darkTheme, value);

  @override
  String get getLanguage => _preferences.getString(_appLanguage) ?? 'ar';

  @override
  Future<void> setLanguage(String value) =>
      _preferences.setString(_appLanguage, value);

  @override
  String get getContentLanguage =>
      _preferences.getString(_contentLanguage) ?? 'ar';

  @override
  Future<void> setContentLanguage(String value) =>
      _preferences.setString(_contentLanguage, value);

  @override
  bool get isAutoLoop => _preferences.getBool(_autoLoop) ?? true;

  @override
  Future<void> setAutoLoop(bool value) =>
      _preferences.setBool(_autoLoop, value);

  @override
  bool get onMute => _preferences.getBool(_onMute) ?? true;

  @override
  Future<void> setOnMute(bool value) => _preferences.setBool(_onMute, value);
}

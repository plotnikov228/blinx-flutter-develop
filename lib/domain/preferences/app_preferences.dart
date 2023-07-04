abstract class AppPreferences {
  int get getAppOpenCount;

  bool get isFirstAppOpen;

  Future setAppOpenCount(int appOpenCount);

  bool get isDarkThemeEnabled;

  Future<void> setDarkThemeEnabled(bool value);

  Future clearAll();

  String get getLanguage;

  Future<void> setLanguage(String value);

  String get getContentLanguage;

  Future<void> setContentLanguage(String value);

  bool get isAutoLoop;

  Future<void> setAutoLoop(bool value);

  bool get onMute;

  Future<void> setOnMute(bool value);
}

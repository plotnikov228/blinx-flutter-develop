import 'package:blinx/domain/entities/user.dart';
import 'package:blinx/domain/preferences/auth_preferences.dart';
import 'package:blinx/domain/preferences/user_preferences.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthLocalDataSource {
  AuthLocalDataSource(this._authPreferences, this._userPreferences);

  final AuthPreferences _authPreferences;
  final UserPreferences _userPreferences;

  Future<void> setAccessToken(String accessToken) =>
      _authPreferences.setAccessToken(accessToken);

  Future<void> setUser(User user) => _userPreferences.setUser(user);

  Future<User?> getSavedUser() => _userPreferences.getUser();

  Stream<User> getStreamingUser() => _userPreferences.getStreamingUser();

  Future<void> logout() async {
    await _userPreferences.clearAll();
    await _userPreferences.setUser(User.empty());
    await _authPreferences.clearAll();
  }
}

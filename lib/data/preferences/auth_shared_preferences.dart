import 'package:blinx/data/model/auth/auth_tokens.dart';
import 'package:blinx/domain/preferences/auth_preferences.dart';
import 'package:streaming_shared_preferences/streaming_shared_preferences.dart';

/// This class handles the authentication state of the whole app.

class AuthSharedPreferences implements AuthPreferences {
  AuthSharedPreferences(this._preferences);

  static const String prefix = 'auth';
  static const String _refreshTokenKey = '${prefix}_refresh_token_key';
  static const String _accessTokenKey = '${prefix}_access_token_key';
  static const String _refreshTokenExpiryKey = '${prefix}_token_expiry_key';

  final StreamingSharedPreferences _preferences;

  /// Returns whether there is a valid auth session available or not.
  /// We do this by checking if we have a valid auth token.
  @override
  bool isLoggedIn() {
    return hasValidAccessToken;
  }

  @override
  Stream<bool> subscribeToLoginState() {
    return _preferences
        .getString(_accessTokenKey, defaultValue: '')
        .distinct()
        .map((accessToken) => accessToken.isNotEmpty);
  }

  @override
  String get accessToken =>
      _preferences.getString(_accessTokenKey, defaultValue: '').getValue();

  @override
  String get refreshToken =>
      _preferences.getString(_refreshTokenKey, defaultValue: '').getValue();

  @override
  bool get hasValidAccessToken => accessToken.isNotEmpty;

  @override
  Future<void> setAuthTokens(AuthTokens tokens) async {
    await _preferences.setString(_accessTokenKey, tokens.accessToken);
    await _preferences.setString(_refreshTokenKey, tokens.refreshToken);
    await _preferences.setDouble(_refreshTokenExpiryKey, tokens.expiresIn);
  }

  @override
  Future<void> setAccessToken(String accessToken) async {
    await _preferences.setString(_accessTokenKey, accessToken);
  }

  @override
  Future<void> clearAll() async {
    await _preferences.remove(_accessTokenKey);
    await _preferences.remove(_refreshTokenKey);
    await _preferences.remove(_refreshTokenExpiryKey);
  }
}

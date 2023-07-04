import 'package:blinx/data/model/auth/auth_tokens.dart';

abstract class AuthPreferences {
  String get accessToken;

  String get refreshToken;

  bool get hasValidAccessToken;

  bool isLoggedIn();

  // Emits true if user is logged in, false otherwise.
  Stream<bool> subscribeToLoginState();

  Future<void> setAuthTokens(AuthTokens tokens);

  Future<void> setAccessToken(String accessToken);

  Future<void> clearAll();
}

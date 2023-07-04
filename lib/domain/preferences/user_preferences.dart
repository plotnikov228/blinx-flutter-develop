import 'package:blinx/domain/entities/user.dart';

abstract class UserPreferences {
  Future<User?> getUser();

  Stream<User> getStreamingUser();

  Future<void> setUser(User user);

  Future<void> clearAll();

  /// Stores user in-app data
  ///
  /// Saves Search History
  Future<void> saveSearchQuery(String newSearchQuery);

  /// Returns Search History in Stream
  Stream<List<String>> getStreamingSearchHistory();
}

import 'dart:convert';

import 'package:blinx/domain/entities/user.dart';
import 'package:blinx/domain/preferences/user_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:streaming_shared_preferences/streaming_shared_preferences.dart';

/// Store the current authenticated user's basic information.

class UserSharedPreferences extends UserPreferences {
  UserSharedPreferences(this._preferences, this._streamingSharedPreferences);

  final SharedPreferences _preferences;
  final StreamingSharedPreferences _streamingSharedPreferences;

  static const String _prefix = 'user_prefs';
  static const String _userJsonKey = '${_prefix}_user_json';
  static const String _searchHistoryJsonKey = '${_prefix}_search_history_json';

  static const int _allowableSearchHistoryLength = 8;

  @override
  Future setUser(User user) async {
    return _streamingSharedPreferences.setString(
      _userJsonKey,
      json.encode(user.toJson()),
    );
  }

  @override
  Future<User?> getUser() async {
    final userJson = _preferences.getString(_userJsonKey);
    if (userJson != null) {
      return User.fromJson(json.decode(userJson));
    }
    return null;
  }

  @override
  Stream<User> getStreamingUser() {
    return _streamingSharedPreferences.getCustomValue<User>(
      _userJsonKey,
      defaultValue: User.empty(),
      adapter: JsonAdapter(
        deserializer: (Object vl)=> User.fromJson(vl as Map<String, dynamic>)
      ),
    );
  }

  @override
  Future<void> clearAll() async {
    await _preferences.remove(_userJsonKey);
  }

  @override
  Future<void> saveSearchQuery(String newSearchQuery) {
    final savedSearchHistoryList = _streamingSharedPreferences.getStringList(
      _searchHistoryJsonKey,
      defaultValue: [],
    ).getValue();

    newSearchQuery = newSearchQuery.trim();

    // If user performes a search which is already in history
    //
    // This is to avoid multiple same search histories and
    // to keep the search ordering correct
    if (savedSearchHistoryList.contains(newSearchQuery)) {
      savedSearchHistoryList.removeWhere(
        (element) => element == newSearchQuery,
      );
    } else if (savedSearchHistoryList.length >=
        _allowableSearchHistoryLength) {
      savedSearchHistoryList.removeAt(0);
    }

    savedSearchHistoryList.add(newSearchQuery);

    return _streamingSharedPreferences.setStringList(
      _searchHistoryJsonKey,
      savedSearchHistoryList.toSet().toList(),
    );
  }

  @override
  Stream<List<String>> getStreamingSearchHistory() =>
      _streamingSharedPreferences.getStringList(
        _searchHistoryJsonKey,
        defaultValue: List.empty(),
      );
}

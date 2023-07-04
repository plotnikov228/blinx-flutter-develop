import 'package:blinx/data/services/http_service/preferences/source/remote/preferences_remote_data_source.dart';
import 'package:blinx/domain/entities/preference.dart';
import 'package:blinx/data/services/request_objects/preferences/preference_request_body.dart';
import 'package:blinx/domain/repostories/preferences_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: PreferencesRepository)
class PreferencesRepositoryImpl extends PreferencesRepository {
  final PreferencesRemoteDataSource _preferencesRemoteDataSource;

  PreferencesRepositoryImpl(this._preferencesRemoteDataSource);

  @override
  Future<Preference> getEmailPreferences() async {
    final response = await _preferencesRemoteDataSource.getEmailPreferences();
    final preference = Preference(
      latestUpdates: response.latestUpdates,
      breakingStories: response.breakingStories,
      forYou: response.forYou,
      storytellerUpdates: response.storytellerUpdates,
      trending: response.trending,
    );

    return preference;
  }

  @override
  Future<Preference> getNotificationPreferences() async {
    final response =
        await _preferencesRemoteDataSource.getNotificationPreferences();
    final preference = Preference(
      latestUpdates: response.latestUpdates,
      breakingStories: response.breakingStories,
      forYou: response.forYou,
      storytellerUpdates: response.storytellerUpdates,
      trending: response.trending,
    );

    return preference;
  }

  @override
  Future<void> setEmailPreferences(
      PreferenceRequestBody preferenceRequestBody) async {
    await _preferencesRemoteDataSource
        .setEmailPreferences(preferenceRequestBody);
  }

  @override
  Future<void> setNotificationPreferences(
      PreferenceRequestBody preferenceRequestBody) async {
    await _preferencesRemoteDataSource
        .setNotificationPreferences(preferenceRequestBody);
  }
}

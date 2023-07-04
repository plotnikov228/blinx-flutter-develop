import 'package:blinx/data/services/request_objects/preferences/preference_request_body.dart';
import 'package:blinx/domain/entities/preference.dart';

abstract class PreferencesRepository {
  Future<Preference> getEmailPreferences();

  Future<void> setEmailPreferences(PreferenceRequestBody preferenceRequestBody);

  Future<Preference> getNotificationPreferences();

  Future<void> setNotificationPreferences(
      PreferenceRequestBody preferenceRequestBody);
}

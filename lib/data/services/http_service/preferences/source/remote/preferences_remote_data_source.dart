import 'package:blinx/data/services/request_objects/preferences/preference_request_body.dart';
import 'package:blinx/data/services/response_objects/preferences/preference_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'preferences_remote_data_source.g.dart';

@RestApi()
@lazySingleton
abstract class PreferencesRemoteDataSource {
  @factoryMethod
  factory PreferencesRemoteDataSource(Dio dio) = _PreferencesRemoteDataSource;

  @GET('/user/email_pref')
  Future<PreferenceResponse> getEmailPreferences();

  @PUT('/user/email_pref')
  Future<void> setEmailPreferences(
    @Body() PreferenceRequestBody preferenceRequestBody,
  );

  @GET('/user/notification_pref')
  Future<PreferenceResponse> getNotificationPreferences();

  @PUT('/user/notification_pref')
  Future<void> setNotificationPreferences(
    @Body() PreferenceRequestBody preferenceRequestBody,
  );
}

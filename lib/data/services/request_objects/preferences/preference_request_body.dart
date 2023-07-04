import 'package:freezed_annotation/freezed_annotation.dart';

part 'preference_request_body.freezed.dart';
part 'preference_request_body.g.dart';

@freezed
class PreferenceRequestBody with _$PreferenceRequestBody {
  const factory PreferenceRequestBody({
    required bool latestUpdates,
    required bool forYou,
    required bool trending,
    required bool breakingStories,
    required bool storytellerUpdates,
  }) = _PreferenceRequestBody;

  factory PreferenceRequestBody.fromJson(Map<String, dynamic> json) =>
      _$PreferenceRequestBodyFromJson(json);
}

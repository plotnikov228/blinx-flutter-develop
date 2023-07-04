import 'package:freezed_annotation/freezed_annotation.dart';

part 'preference_response.freezed.dart';
part 'preference_response.g.dart';

@freezed
class PreferenceResponse with _$PreferenceResponse {
  const factory PreferenceResponse({
    required bool latestUpdates,
    required bool forYou,
    required bool trending,
    required bool breakingStories,
    required bool storytellerUpdates,
  }) = _PreferenceResponse;

  factory PreferenceResponse.fromJson(Map<String, dynamic> json) =>
      _$PreferenceResponseFromJson(json);
}

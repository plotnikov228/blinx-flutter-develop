import 'package:freezed_annotation/freezed_annotation.dart';

part 'preference.freezed.dart';
part 'preference.g.dart';

@freezed
abstract class Preference with _$Preference {
  const Preference._();

  const factory Preference({
    required bool latestUpdates,
    required bool forYou,
    required bool trending,
    required bool breakingStories,
    required bool storytellerUpdates,
  }) = _Preference;

  bool get areAllTurnedOn =>
      latestUpdates &&
      forYou &&
      trending &&
      breakingStories &&
      storytellerUpdates;

  factory Preference.fromJson(Map<String, dynamic> json) =>
      _$PreferenceFromJson(json);
}

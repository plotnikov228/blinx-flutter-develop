part of 'email_preference_cubit.dart';

@freezed
class EmailPreferenceState with _$EmailPreferenceState {
  const EmailPreferenceState._();

  const factory EmailPreferenceState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default(true) bool areAllTurnedOn,
    @Default(true) bool latestUpdates,
    @Default(true) bool forYou,
    @Default(true) bool trending,
    @Default(true) bool breakingStories,
    @Default(true) bool storytellerUpdates,
  }) = _EmailPreferenceState;

  bool get areAllOn =>
      latestUpdates &&
      forYou &&
      trending &&
      breakingStories &&
      storytellerUpdates;
}

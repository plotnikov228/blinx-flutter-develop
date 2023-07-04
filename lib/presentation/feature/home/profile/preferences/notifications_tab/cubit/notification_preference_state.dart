part of 'notification_preference_cubit.dart';

@freezed
class NotificationPreferenceState with _$NotificationPreferenceState {
  const NotificationPreferenceState._();

  const factory NotificationPreferenceState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default(true) bool areAllTurnedOn,
    @Default(true) bool latestUpdates,
    @Default(true) bool forYou,
    @Default(true) bool trending,
    @Default(true) bool breakingStories,
    @Default(true) bool storytellerUpdates,
  }) = _NotificationPreferenceState;

  bool get areAllOn =>
      latestUpdates &&
      forYou &&
      trending &&
      breakingStories &&
      storytellerUpdates;
}

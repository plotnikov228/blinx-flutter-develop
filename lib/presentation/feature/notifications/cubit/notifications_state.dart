part of 'notifications_cubit.dart';

@freezed
class NotificationsState with _$NotificationsState {
  const factory NotificationsState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default([]) List<InAppNotification> notificationsList,
  }) = _NotificationsState;
}

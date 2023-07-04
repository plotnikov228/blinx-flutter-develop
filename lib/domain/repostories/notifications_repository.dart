import 'package:blinx/domain/entities/notifications/notification.dart';

abstract class NotificationsRepository {
  Future<List<InAppNotification>> getAllNotifications();

  Future<void> markNotificationAsRead(List<int> notificationIds);
}

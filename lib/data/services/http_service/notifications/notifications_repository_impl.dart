import 'package:blinx/data/services/http_service/notifications/data_source/remote/notifications_remote_data_source.dart';
import 'package:blinx/data/services/request_objects/notifications/mark_notification_as_read_request_body.dart';
import 'package:blinx/domain/entities/notifications/notification.dart';
import 'package:blinx/domain/repostories/notifications_repository.dart';

import 'package:injectable/injectable.dart';

@LazySingleton(as: NotificationsRepository)
class NotificationsRepositoryImpl extends NotificationsRepository {
  NotificationsRepositoryImpl(this._notificationsRemoteDataSource);

  final NotificationsRemoteDataSource _notificationsRemoteDataSource;

  @override
  Future<List<InAppNotification>> getAllNotifications() async {
    final notificationsResponse = await _notificationsRemoteDataSource.getAllNotifications();
    //final _notificationsList = _notificationsResponse.map((item) => item).toList();
    return notificationsResponse;
  }

  @override
  Future<void> markNotificationAsRead(List<int> notificationIds) {
    final body = MarkNotificationAsReadRequestBody(
      notificationIds: notificationIds,
    );
    return _notificationsRemoteDataSource.markNotificationAsRead(body);
  }
}

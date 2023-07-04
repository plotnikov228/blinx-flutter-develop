import 'package:blinx/presentation/feature/home/you/you_page_logged_in/ui/user_notifications/ui/list_notification_component.dart';
import 'package:flutter/material.dart';
import 'package:blinx/domain/entities/notifications/notification.dart';
class ListNotificationsView extends StatelessWidget {
  const ListNotificationsView({
    Key? key,
    required this.userNotifications,
  }) : super(key: key);

  final List<InAppNotification> userNotifications;
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: userNotifications.length,
      itemBuilder: (_, index) {
        return ListNotificationComponent(
          userNotification: userNotifications[index]
        );
      },
    );
  }
}
import 'package:blinx/presentation/feature/home/you/you_page_logged_in/ui/user_notifications/ui/list_notifications_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:blinx/presentation/feature/notifications/cubit/notifications_cubit.dart';

class NotificationsContent extends StatelessWidget {
  const NotificationsContent({super.key});

  @override
  Widget build(BuildContext context) {

    context.read<NotificationsCubit>();

    return  BlocBuilder<NotificationsCubit, NotificationsState>(
      builder: (context, state){
        final userNotifications = state.notificationsList;
        return ListNotificationsView(
          userNotifications: userNotifications,
        );
      }
    );
  }
}
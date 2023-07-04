import 'package:blinx/injection/injector.dart';
import 'package:blinx/presentation/feature/home/profile/preferences/notifications_tab/cubit/notification_preference_cubit.dart';
import 'package:blinx/presentation/feature/home/profile/preferences/notifications_tab/ui/notifications_tab_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationsTab extends StatelessWidget {
  const NotificationsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => injector.get<NotificationPreferenceCubit>()
        ..loadNotificationPreference(),
      child: const Scaffold(
        body: NotificationsTabBody(),
      ),
    );
  }
}

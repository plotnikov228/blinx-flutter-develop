import 'package:blinx/injection/injector.dart';
import 'package:blinx/presentation/feature/notifications/cubit/notifications_cubit.dart';
import 'package:blinx/presentation/feature/notifications/ui/notifications_body.dart';
import 'package:blinx/presentation/widgets/app_bar/blinx_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      appBar: BlinxAppBar.normal(),
      body: BlocProvider<NotificationsCubit>(
        create: (context) => injector()..loadAllNotifications(),
        child: const NotificationBody(),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:blinx/presentation/feature/notifications/cubit/notifications_cubit.dart';
import 'package:blinx/presentation/feature/notifications/ui/notification_list_tile.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:blinx/presentation/widgets/shimmer_box.dart';
import 'package:blinx/presentation/widgets/snackbar/app_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationBody extends StatelessWidget {
  const NotificationBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.defaultSection;

    return BlocConsumer<NotificationsCubit, NotificationsState>(
      listenWhen: (_, current) => current.status.isFailure,
      listener: (context, state) {
        state.status.mapOrNull(
          failure: (error) => AppSnackBar.showErrorMessage(
            context,
            title: ResponseError.from(error).getErrorMessage(context),
          ),
        );
      },
      builder: (context, state) {
        if (!state.status.isSuccess) {
          return Padding(
            padding: const EdgeInsets.only(top: 8),
            child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) {
                return const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: ShimmerBox(
                    height: 130,
                  ),
                );
              },
            ),
          );
        }

        if (state.notificationsList.isEmpty) {
          return Center(child: AppText.body(i18n.nothingToShow));
        }

        return Padding(
          padding: const EdgeInsets.only(top: 8),
          child: ListView.builder(
            itemCount: state.notificationsList.length,
            itemBuilder: (context, index) {
              final notification = state.notificationsList[index];
              return Column(
                children: [
                  NotificationListTile(
                    imageurl: notification.imageUrl,
                    type: notification.type,
                    title: notification.article.title,
                    time: notification.time!,
                    isSeen: notification.isRead,
                    onNotificationTileTap: () {
                      context
                          .read<NotificationsCubit>()
                          .markAsRead(notification);
                      context.router.push(
                        ArticleScreenRoute(
                          article: notification.article,
                        ),
                      );
                    },
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}

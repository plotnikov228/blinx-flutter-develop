import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/utils/date_formatter.dart';
import 'package:blinx/presentation/widgets/app_network_image.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:blinx/domain/entities/notifications/notification.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:blinx/presentation/feature/home/cubit/home_ab_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:blinx/presentation/feature/notifications/cubit/notifications_cubit.dart';

class ListNotificationComponent extends StatelessWidget {
  const ListNotificationComponent({
    Key? key,
    required this.userNotification,
  }) : super(key: key);

  final InAppNotification userNotification;

  @override
  Widget build(BuildContext context) {

    final borderSide = BorderSide(
        color: context.colors.inputBackground,
        width: 2.0,
      );

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 4
      ),
      child: GestureDetector(
        onTap: (){
          if(!userNotification.isRead) {
            context.read<NotificationsCubit>().markAsRead(userNotification);
          }

          !userNotification.article.isReels?
            context.router.push(
              ArticleScreenRoute(article: userNotification.article),
            )
            :context.read<HomeAbCubit>().update(false,selectedArticle: userNotification.article, page: 'profile_page',playList: [userNotification.article]);
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Container(
            color: !userNotification.isRead?context.colors.inputBackground:Colors.transparent,
            height: 105,
            child: Row(
              children: [
                SizedBox(
                  width: 105,
                  height: 105,
                  child: AppNetworkImage(
                    imageUrl: userNotification.article.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Directionality.of(context)==TextDirection.ltr?
                        Border(
                          top: borderSide,
                          right: borderSide,
                          bottom: borderSide,
                        ):
                        Border(
                          top: borderSide,
                          left: borderSide,
                          bottom: borderSide,
                        ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 8.0
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: AppText.body800(
                              userNotification.article.categories.first.displayName,
                              fontSize: 10,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: AppText.body300(
                              userNotification.article.title,
                              maxLines: 2,
                              fontSize: 16,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          AppText.body300(
                            // 'testt',
                            userNotification.article.publishDate!.reelsFormat(context),
                            // userNotification.time!.reelsFormat(context),
                            fontSize: 12,
                            color: context.colors.textGrey,
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
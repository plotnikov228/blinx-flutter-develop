import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/feature/home/profile/preferences/interests_tab/cubit/interests_cubit.dart';
import 'package:blinx/presentation/feature/home/profile/preferences/notifications_tab/cubit/notification_preference_cubit.dart';
import 'package:blinx/presentation/feature/notifications/cubit/notifications_cubit.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:blinx/presentation/widgets/app_bar/blinx_app_bar.dart';
import 'package:blinx/presentation/widgets/app_tab_bar.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:blinx/presentation/feature/home/profile/preferences/notifications_tab/cubit/notification_preference_cubit.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_single_child_scroll_view.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:blinx/presentation/widgets/snackbar/app_snackbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PreferencesNotificationsScreen extends StatelessWidget {
  const PreferencesNotificationsScreen({super.key});

  Widget tileBuilder(title, BuildContext context, onPress, bool isActive) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 18),
      title: AppText.body800(
        title,
        fontSize: 16,
      ),
      trailing: CupertinoSwitch(
        activeColor: const Color.fromRGBO(0, 102, 255, 1),
        trackColor: context.colors.switchTrack,
        value: isActive,
        onChanged: (value) => onPress(value),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.preference;
    return BlocBuilder<NotificationPreferenceCubit,
        NotificationPreferenceState>(builder: (context, state) {
      return Scaffold(
        appBar: BlinxAppBar.normal(
          backgroundColor: Colors.transparent,
          title: i18n.notifications,
          // actions: const [ProfileThemeSwitch()],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: AppText.body300(
                  i18n.pushNotifications,
                  fontSize: 16,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Container(
                  color: context.colors.darkGrey,
                  child: Column(
                    children: [
                      tileBuilder(i18n.breakingNews, context, () {}, false),
                      tileBuilder(i18n.heroesStories, context, () {}, false),
                      tileBuilder(
                          i18n.personalizedContent, context, () {}, false),
                      tileBuilder(i18n.editorsPick, context, () {}, false)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: AppText.body300(
                  i18n.inAppNotifications,
                  fontSize: 16,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Container(
                  color: context.colors.darkGrey,
                  child: Column(
                    children: [
                      tileBuilder(
                          i18n.latestUpdates,
                          context,
                          context
                              .read<NotificationPreferenceCubit>()
                              .onLatestUpdatesChange,
                          state.latestUpdates),
                      tileBuilder(
                          i18n.forYou,
                          context,
                          context
                              .read<NotificationPreferenceCubit>()
                              .onForYouChange,
                          state.forYou),
                      tileBuilder(
                          i18n.trending,
                          context,
                          context
                              .read<NotificationPreferenceCubit>()
                              .onTrendingChange,
                          state.trending),
                      tileBuilder(
                          i18n.breakingStories,
                          context,
                          context
                              .read<NotificationPreferenceCubit>()
                              .onBreakingStoriesChange,
                          state.breakingStories),
                      tileBuilder(
                          i18n.storytellerUpdates,
                          context,
                          context
                              .read<NotificationPreferenceCubit>()
                              .onStorytellerUpdatesChange,
                          state.storytellerUpdates)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}

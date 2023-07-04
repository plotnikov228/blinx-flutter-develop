import 'package:blinx/domain/entities/user.dart';
import 'package:blinx/domain/preferences/user_preferences.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/feature/home/profile/preferences/notifications_tab/cubit/notification_preference_cubit.dart';
import 'package:blinx/presentation/feature/home/profile/preferences/ui/settings_tile.dart';
import 'package:blinx/presentation/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/presentation/resources/resources.dart';

import 'package:auto_route/auto_route.dart';
import 'package:blinx/presentation/routes/router.gr.dart';

class SettingsAccountSection extends StatelessWidget {
  const SettingsAccountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: StreamBuilder<User>(
        stream: injector.get<UserPreferences>().getStreamingUser(),
        builder: (_, value) {
          final user = value.data;

          if(user == null||user.email.value=='') {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: AppButton.rounded(
                  title: context.localization.login.loginAction,
                  onPressed: () {
                    context.router.push(
                      AuthenticationScreenRoute(inLogin: true),
                    );
                  }),
            );
          }
          context
              .read<NotificationPreferenceCubit>()
              .loadNotificationPreference();

          return ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Container(
              color: context.colors.darkGrey,
              child: Column(
                children: [
                  SettingsTile(
                    title: context.localization.profile.accountInformation,
                    icon: Assets.icons.accountInformationSettings.svg(
                      width: 27,
                      color: context.colors.text,
                    ),
                    onPress: () {
                      context.router.push(AccountInformationScreenRoute());
                    },
                  ),
                  SettingsTile(
                    title: context.localization.profile.security,
                    icon: Assets.icons.securitySettings.svg(
                      width: 28,
                      color: context.colors.text,
                    ),
                    onPress: () {
                      context.router.push(SecurityScreenRoute());
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

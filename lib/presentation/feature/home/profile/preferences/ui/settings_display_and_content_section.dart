import 'package:blinx/domain/entities/collection.dart';
import 'package:blinx/domain/preferences/app_preferences.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/common/cubit/theme/app_theme_cubit.dart';
import 'package:blinx/presentation/feature/home/profile/preferences/ui/settings_tile.dart';
import 'package:blinx/presentation/feature/switch_language/ui/switch_language_sheet_content.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_bar/blinx_app_bar.dart';
import 'package:blinx/presentation/widgets/app_button.dart';
import 'package:blinx/presentation/widgets/bottom_sheet/app_bottom_sheet.dart';
import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsDisplayAndContentSection extends StatelessWidget {
  const SettingsDisplayAndContentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Container(
          color: context.colors.darkGrey,
          child: Column(
            children: [
              SettingsTile(
                title: context.localization.preference.notifications,
                icon: Assets.icons.notifications.svg(
                  color: context.colors.text,
                ),
                onPress: () {
                  context.router
                      .push(const PreferencesNotificationsScreenRoute());
                },
              ),
              SettingsTile(
                  title: context.localization.profile.language,
                  icon: Assets.icons.switchLanguageSettings.svg(
                    width: 27,
                    color: context.colors.text,
                  ),
                  onPress: () {
                    context.router.push(const LanguageScreenRoute());
                  }),
              SettingsTile(
                title: context.localization.profile.display,
                icon: Assets.icons.switchThemeSettings.svg(
                  width: 19,
                  color: context.colors.text,
                ),
                onPress: () {
                  context.router.push(const DisplaySettingsRoute());
                },
              ),
              SettingsTile(
                title: context.localization.profile.videoSettings,
                icon: Assets.icons.videoSettings.svg(
                  width: 28,
                  color: context.colors.text,
                ),
                onPress: () {
                  context.router.push(const VideoSettingsScreenRoute());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:blinx/domain/entities/user.dart';
import 'package:blinx/domain/preferences/user_preferences.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/feature/home/profile/preferences/interests_tab/cubit/interests_cubit.dart';
import 'package:blinx/presentation/feature/home/profile/preferences/ui/settings_account_section.dart';
import 'package:blinx/presentation/feature/home/profile/preferences/ui/settings_display_and_content_section.dart';
import 'package:blinx/presentation/feature/home/profile/preferences/ui/settings_login_section.dart';
import 'package:blinx/presentation/feature/home/profile/preferences/ui/settings_support_section.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:blinx/presentation/widgets/app_bar/blinx_app_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget sectionTitle(String title) {
      return Padding(
        padding: const EdgeInsets.only(left: 32.0, right: 32.0, bottom: 18.0),
        child: AppText.body300(
          title,
          fontSize: 18,
        ),
      );
    }

    Widget tileBox(String title) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 5),
        child: AppText.body300(
          title,
          fontSize: 18,
        ),
      );
    }

    return BlocProvider(
      create: (_) => injector.get<InterestsCubit>()..loadInterestsData(),
      child: Scaffold(
        appBar: BlinxAppBar.normal(
          backgroundColor: Colors.transparent,
          title: context.localization.profile.settingsBottomSheetLabel,
          // actions: const [ProfileThemeSwitch()],
        ),
        body: ListView(
          children: [
            sectionTitle(context.localization.profile.account),
            const SettingsAccountSection(),
            const SizedBox(height: 24),
            sectionTitle(context.localization.profile.displayAndContent),
            const SettingsDisplayAndContentSection(),
            const SizedBox(height: 24),
            sectionTitle(context.localization.profile.support),
            const SettingsSupportSection(),
            const SizedBox(height: 24),

            StreamBuilder<User>(
              stream: injector.get<UserPreferences>().getStreamingUser(),
              builder: (_, value) {
                final user = value.data;

                if(user == null||user.email.value=='') {
                  return const SizedBox();
                }
                return Column(
                  children: [
                    sectionTitle(context.localization.login.loginAction),
                    const SettingsLoginSection(),
                  ],
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}

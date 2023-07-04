import 'package:auto_route/auto_route.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/presentation/feature/home/profile/preferences/ui/settings_tile.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:blinx/nstack/nstack.dart';

class SettingsSupportSection extends StatelessWidget {
  const SettingsSupportSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 13.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Container(
          color: context.colors.darkGrey,
          child: Column(
            children: [
              // SettingsTile(
              //   title: context.localization.profile.reportAProblem,
              //   icon: Assets.icons.reportSettings.svg(
              //     width: 27,
              //     color: context.colors.text,
              //   ),
              //   onPress: () {},
              // ),
              SettingsTile(
                title: context.localization.profile.termsAndConditions,
                icon: Assets.icons.termAndConditionsSettings.svg(
                  width: 28,
                  color: context.colors.text,
                ),
                onPress: () {
                  context.router.push(TermsAndConditionsRoute());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

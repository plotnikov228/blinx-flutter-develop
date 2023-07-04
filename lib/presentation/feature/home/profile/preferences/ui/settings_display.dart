import 'package:auto_route/auto_route.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/common/cubit/theme/app_theme_cubit.dart';
import 'package:blinx/presentation/resources/app_colors.dart';
import 'package:blinx/presentation/resources/app_text_styles.dart';
import 'package:blinx/presentation/widgets/app_bar/blinx_app_bar.dart';
import 'package:blinx/presentation/widgets/app_button.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DisplaySettings extends StatelessWidget {
  const DisplaySettings({super.key});

  @override
  Widget build(BuildContext context) {
    final themeMode = context.watch<AppThemeCubit>().state.themeMode;
    final i18n = context.localization.preference;
    return Scaffold(
      appBar: BlinxAppBar.normal(
        title: context.localization.profile.display,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: AppText.body300(
              i18n.appearance,
              fontSize: 16,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 18),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                color: context.colors.darkGrey,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Assets.icons.lightDisplay.svg(),
                      const SizedBox(
                        height: 16,
                      ),
                      AppText.body800(
                        i18n.day,
                        fontSize: 16,
                      ),
                      Radio(
                        activeColor: context.colors.backgroundReversed,
                        value: 'light',
                        groupValue: themeMode.name,
                        onChanged: (value) {
                          if (value == 'light') {
                            context.read<AppThemeCubit>().toggleTheme();
                          }
                        },
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Assets.icons.darkDisplay.svg(),
                      const SizedBox(
                        height: 16,
                      ),
                      AppText.body800(
                        i18n.night,
                        fontSize: 16,
                      ),
                      Radio(
                        value: 'dark',
                        groupValue: themeMode.name,
                        activeColor: context.colors.backgroundReversed,
                        onChanged: (value) {
                          if (value == 'dark') {
                            context.read<AppThemeCubit>().toggleTheme();
                          }
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 24),
            child: AppButton.rounded(
              title: context.localization.manageAccount.save,
              onPressed: () {
                context.router.pop();
              },
            ),
          ),
        ],
      ),
    );
  }
}

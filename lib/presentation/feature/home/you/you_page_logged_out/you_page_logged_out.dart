import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_button.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:blinx/presentation/widgets/utilities/focus_scope_dismissible.dart';

import 'package:blinx/presentation/widgets/bottom_sheet/app_bottom_sheet.dart';
import 'package:blinx/presentation/feature/settings/ui/settings_bottom_sheet.dart';
import 'dart:ui';

class YouPageLoggedOut extends StatelessWidget {
  const YouPageLoggedOut({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.login;
    final kStatusBarHeight = MediaQueryData.fromWindow(window).padding.top - 13;

    return FocusScopeDismissible(
      child: Padding(
        padding: EdgeInsets.only(top: kStatusBarHeight),
        child: Scaffold(
          appBar: AppBar(
              elevation: 0,
              backgroundColor: context.colors.background,
              actions: [
                IconButton(
                  splashRadius: 20,
                  onPressed: () {
                    AppBottomSheet.showSheet(
                      context,
                      child: const SettingsBottomSheet(),
                    );
                  },
                  icon: Assets.icons.profileOptions
                      .svg(color: context.colors.text),
                ),
              ]),
          body: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(24, 52, 24, 0),
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Assets.icons.ballon.svg(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 32, 0, 32),
                  child: AppText.titleLight(
                    i18n.authenticationScreenHeadline,
                    textAlign: TextAlign.center,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: AppButton.rounded(
                      title: i18n.loginAction,
                      onPressed: () {
                        context.router.push(
                          AuthenticationScreenRoute(inLogin: true),
                        );
                      }),
                )
                // const LoginButton(),
              ],
            ),
          ),
          bottomNavigationBar: SizedBox(
            height: 140,
            child: Column(
              children: [
                Divider(color: context.colors.grey),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 32,
                  ),
                  child: AppText.titleLight(i18n.dontHaveAccountLabel),
                ),
                AppButton.text(
                  title: i18n.registerAction,
                  textColor: context.colors.text,
                  onPressed: () {
                    context.router.push(
                      AuthenticationScreenRoute(inLogin: false),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
    // Scaffold(
    //   appBar: BlinxAppBar.normal(
    //     actions: const [
    //       ReelsLoopSwitch(),
    //       ProfileThemeSwitch(),
    //     ],
    //   ),
    //   body: CustomScrollView(
    //     slivers: [
    //       SliverList(
    //         delegate: SliverChildListDelegate([
    //           const SizedBox(
    //             height: 42,
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.symmetric(horizontal: 16),
    //             child: AppText.body300Font20(
    //               context.localization.manageAccount.loggedOutScreenHeading,
    //               textAlign: TextAlign.center,
    //             ),
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.fromLTRB(52, 32, 52, 48),
    //             child: AppButton.rounded(
    //               title: context.localization.manageAccount.loginRegisterButton,
    //               onPressed: context.navigateToLoginScreen,
    //             ),
    //           ),
    //           Divider(
    //             color: context.colors.divider,
    //             thickness: 1,
    //           ),
    //           const SizedBox(height: 34),
    //           ProfileGrid(
    //             profieItems: [
    //               /*ProfileItem(
    //                 id: '1',
    //                 name: context.localization.profile.language,
    //                 icon: Assets.icons.language.path,
    //                 onTap: () {
    //                   AppBottomSheet.showSheet(
    //                     context,
    //                     child: const SwitchLanguageSheetContent(),
    //                   );
    //                 },
    //               ),*/
    //               ProfileItem(
    //                 id: '4',
    //                 name: context.localization.profile.support,
    //                 icon: Assets.icons.support.path,
    //                 onTap: context.navigateToSupport,
    //               ),
    //             ],
    //           )
    //         ]),
    //       )
    //     ],
    //   ),
    // );
  }
}

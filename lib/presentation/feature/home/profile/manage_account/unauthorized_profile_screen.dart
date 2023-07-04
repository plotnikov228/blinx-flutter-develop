import 'package:blinx/domain/entities/profile_item.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/feature/home/profile/ui/profile_grid.dart';
import 'package:blinx/presentation/feature/home/profile/ui/profile_theme_switch.dart';
import 'package:blinx/presentation/feature/home/profile/ui/reels_loop_switch.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/routes/app_navigator.dart';
import 'package:blinx/presentation/widgets/app_bar/blinx_app_bar.dart';
import 'package:blinx/presentation/widgets/app_button.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class UnauthorizedProfileScreen extends StatelessWidget {
  const UnauthorizedProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BlinxAppBar.normal(
        actions: const [
          ReelsLoopSwitch(),
          ProfileThemeSwitch(),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(
                height: 42,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: AppText.body300Font20(
                  context.localization.manageAccount.loggedOutScreenHeading,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(52, 32, 52, 48),
                child: AppButton.rounded(
                  title: context.localization.manageAccount.loginRegisterButton,
                  onPressed: context.navigateToLoginScreen,
                ),
              ),
              Divider(
                color: context.colors.divider,
                thickness: 1,
              ),
              const SizedBox(height: 34),
              ProfileGrid(
                profieItems: [
                  /*ProfileItem(
                    id: '1',
                    name: context.localization.profile.language,
                    icon: Assets.icons.language.path,
                    onTap: () {
                      AppBottomSheet.showSheet(
                        context,
                        child: const SwitchLanguageSheetContent(),
                      );
                    },
                  ),*/
                  ProfileItem(
                    id: '4',
                    name: context.localization.profile.support,
                    icon: Assets.icons.support.path,
                    onTap: context.navigateToSupport,
                  ),
                ],
              )
            ]),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/feature/home/profile/ui/profile_username_section.dart';
import 'package:blinx/presentation/widgets/bottom_sheet/app_bottom_sheet.dart';
import 'package:blinx/presentation/feature/settings/ui/settings_bottom_sheet.dart';
import 'package:auto_route/auto_route.dart';

class YouPageLoggedInAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const YouPageLoggedInAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  AppBar build(BuildContext context) {
    return AppBar(
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
          icon: Assets.icons.profileOptions.svg(color: context.colors.text),
        ),
      ],
      title: const Padding(
        padding: EdgeInsets.only(top: 4.0),
        child: Center(child: ProfileUserNameSection()),
      ),
      leading: const SizedBox(),
    );
  }
}

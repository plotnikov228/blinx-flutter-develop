import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/feature/home/profile/preferences/interests_tab/cubit/interests_cubit.dart';
import 'package:blinx/presentation/feature/home/profile/preferences/ui/settings_account_section.dart';
import 'package:blinx/presentation/feature/home/profile/preferences/ui/settings_display_and_content_section.dart';
import 'package:blinx/presentation/feature/home/profile/preferences/ui/settings_support_section.dart';
import 'package:blinx/presentation/feature/home/profile/ui/profile_theme_switch.dart';
import 'package:blinx/presentation/feature/switch_language/ui/switch_language_sheet_content.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:blinx/presentation/widgets/bottom_sheet/app_bottom_sheet.dart';
import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  const SettingsTile({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPress,
  }) : super(key: key);

  final String title;
  final Widget icon;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10.0),
          bottomRight: Radius.circular(10.0),
        ),
      ),
      contentPadding:
          const EdgeInsets.only(top: 7, right: 18, bottom: 7, left: 18),
      title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            icon,
            Padding(
              padding: const EdgeInsets.only(right: 17, left: 17),
              child: AppText.body800(title),
            )
          ]),
      trailing: Padding(
        padding: const EdgeInsets.only(left: 2.25, right: 9.25),
        child: Directionality.of(context) == TextDirection.ltr
            ? Assets.icons.leadingRight
                .svg(color: context.colors.text, width: 9)
            : Assets.icons.leadingLeft
                .svg(color: context.colors.text, width: 9),
      ),
      onTap: onPress,
    );
  }
}

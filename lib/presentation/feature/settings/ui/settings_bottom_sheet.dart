import 'package:blinx/domain/preferences/app_preferences.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/widgets/bottom_sheet/ui/bottom_sheet_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:blinx/gen/assets.gen.dart';

import 'package:auto_route/auto_route.dart';
import 'package:blinx/presentation/routes/router.gr.dart';

class SettingsBottomSheet extends StatelessWidget {
  const SettingsBottomSheet({Key? key}) : super(key: key);

  void switchLanguage(BuildContext context, String languageCode) async {
    final scope = NStackScope.of(context);
    final supportedLocales = scope.nstack.supportedLocales;

    final supportedLocale = supportedLocales.firstWhere(
      (e) {
        return e.languageCode == languageCode;
      },
      orElse: () => supportedLocales.first,
    );

    await scope.changeLanguage(supportedLocale);
    final appSharedPreferences = injector.get<AppPreferences>();
    await appSharedPreferences.setLanguage(languageCode);

    Phoenix.rebirth(context);
  }

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.profile;
    return Material(
      child: Column(
        children: [
          BottomSheetListTile(
            text: i18n.settingsBottomSheetLabel,
            svgPath: Assets.icons.manageAccount.path,
            onTap: () {
              Navigator.pop(context);
              context.router.push(const SettingsScreenRoute());
            },
          ),
        ],
      ),
    );
  }
}

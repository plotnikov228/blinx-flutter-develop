import 'package:blinx/domain/preferences/app_preferences.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_bar/blinx_app_bar.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:blinx/presentation/widgets/app_button.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';

class AppLanguage extends StatefulWidget {
  const AppLanguage({Key? key}) : super(key: key);

  @override
  _AppLanguageState createState() => _AppLanguageState();
}

class _AppLanguageState extends State<AppLanguage> {
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

    await Phoenix.rebirth(context);
    context.router.pop();
  }

  String currentLang = injector.get<AppPreferences>().getLanguage;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.profile;
    return Scaffold(
      appBar: BlinxAppBar.normal(
        backgroundColor: Colors.transparent,
        title: i18n.appLanguage,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.body500(
                    i18n.appLangHeadline1,
                    fontSize: 14,
                  ),
                  AppText.body500(
                    i18n.appLangHeadline2,
                    fontSize: 14,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Radio(
                  splashRadius: 1,
                  value: 'ar',
                  groupValue: currentLang,
                  activeColor: context.colors.backgroundReversed,
                  onChanged: (value) {
                    setState(() {
                      currentLang = 'ar';
                    });
                  },
                ),
                GestureDetector(
                  onTap: () => setState(() {
                    currentLang = 'ar';
                  }),
                  child: AppText.body500(
                    'العربية',
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              children: [
                Radio(
                  splashRadius: 1,
                  value: 'en',
                  groupValue: currentLang,
                  activeColor: context.colors.backgroundReversed,
                  onChanged: (value) {
                    setState(() {
                      currentLang = 'en';
                    });
                  },
                ),
                GestureDetector(
                  onTap: () => setState(() {
                    currentLang = 'en';
                  }),
                  child: AppText.body500(
                    'English',
                    fontSize: 16,
                  ),
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 24),
        child: AppButton.rounded(
            title: context.localization.manageAccount.save,
            isLoading: isLoading,
            onPressed: () {
              setState(() {
                isLoading = true;
              });
              switchLanguage(context, currentLang);
            }),
      ),
    );
  }
}

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

class ContentLanguage extends StatefulWidget {
  const ContentLanguage({Key? key}) : super(key: key);

  @override
  _ContentLanguageState createState() => _ContentLanguageState();
}

class _ContentLanguageState extends State<ContentLanguage> {
  void switchLanguage(BuildContext context, String languageCode) async {
    final appSharedPreferences = injector.get<AppPreferences>();
    await appSharedPreferences.setContentLanguage(languageCode);
    context.router.pop();

    Phoenix.rebirth(context);
  }

  String currentLang = injector.get<AppPreferences>().getContentLanguage;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.profile;
    return Scaffold(
      appBar: BlinxAppBar.normal(
        backgroundColor: Colors.transparent,
        title: i18n.contentLanguage,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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

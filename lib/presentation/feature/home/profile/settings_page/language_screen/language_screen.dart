import 'package:blinx/domain/preferences/app_preferences.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/feature/home/profile/preferences/notifications_tab/cubit/notification_preference_cubit.dart';
import 'package:blinx/presentation/feature/home/profile/settings_page/language_screen/app_language.dart';
import 'package:blinx/presentation/feature/home/profile/settings_page/language_screen/content_language.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_bar/blinx_app_bar.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  Widget tileBuilder(title, BuildContext context, onPress, currentLang) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 7, horizontal: 16),
      title: AppText.body800(
        title,
        color: context.colors.text,
      ),
      trailing: Padding(
        padding: const EdgeInsets.only(left: 2.25, right: 9.25),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppText.body300(
              currentLang == 'en' ? 'English' : 'العربية',
              fontSize: 13,
              color: context.colors.textGrey,
            ),
            const SizedBox(
              width: 16,
            ),
            Directionality.of(context) == TextDirection.ltr
                ? Assets.icons.leadingRight
                    .svg(color: context.colors.text, width: 9)
                : Assets.icons.leadingLeft
                    .svg(color: context.colors.text, width: 9),
          ],
        ),
      ),
      onTap: onPress,
    );
  }

  @override
  Widget build(BuildContext context) {
    String currentAppLang = injector.get<AppPreferences>().getLanguage;
    String currentContentLang =
        injector.get<AppPreferences>().getContentLanguage;

    final i18n = context.localization.profile;
    return BlocBuilder<NotificationPreferenceCubit,
        NotificationPreferenceState>(builder: (context, state) {
      return Scaffold(
        appBar: BlinxAppBar.normal(
          backgroundColor: Colors.transparent,
          title: context.localization.profile.language,
          // actions: const [ProfileThemeSwitch()],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Container(
                  color: context.colors.darkGrey,
                  child: Column(
                    children: [
                      tileBuilder(i18n.appLanguage, context, () {
                        showDialog(
                          barrierColor: Colors.transparent,
                          context: context,
                          builder: (BuildContext context) =>
                              const AppLanguage(),
                        );
                      }, currentAppLang),
                      tileBuilder(i18n.contentLanguage, context, () {
                        showDialog(
                          barrierColor: Colors.transparent,
                          context: context,
                          builder: (BuildContext context) =>
                              const ContentLanguage(),
                        );
                      }, currentContentLang),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}

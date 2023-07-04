import 'package:blinx/presentation/widgets/app_button.dart';
import 'package:blinx/presentation/widgets/app_settings_title.dart';
import 'package:blinx/presentation/widgets/app_single_child_scroll_view.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:blinx/presentation/widgets/app_text_field.dart';
import 'package:blinx/presentation/widgets/utilities/focus_scope_dismissible.dart';
import 'package:flutter/material.dart';
import 'package:blinx/nstack/nstack.dart';

class SupportShareYourStoryTabPage extends StatelessWidget {
  const SupportShareYourStoryTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.support;
    return FocusScopeDismissible(
      child: AppSingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            AppSettingsTitle(text: i18n.emailUsYourStories),
            AppText.body300Font13(
              i18n.ifYouWantTo,
            ),
            const SizedBox(height: 18),
            SizedBox(
              width: 144,
              height: 32,
              child: AppButton.roundedSmall(
                title: i18n.emailUs,
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 32),
            AppSettingsTitle(text: i18n.fBLINXInvestigations),
            AppText.body300Font13(
              i18n.ifYouHaveATip,
            ),
            const SizedBox(height: 18),
            SizedBox(
              width: 220,
              height: 32,
              child: AppButton.roundedSmall(
                title: i18n.sendInvestigationsEmail,
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 32),
            AppSettingsTitle(text: i18n.getInTouch),
            AppText.body300Font13(
              i18n.ifYouWouldLikeToLearnMore,
            ),
            const SizedBox(height: 24),
            AppTextField(labelText: i18n.name),
            const SizedBox(height: 16),
            AppTextField(labelText: i18n.email),
            const SizedBox(height: 16),
            AppTextField(labelText: i18n.message),
            const SizedBox(height: 32),
            AppButton.rounded(title: i18n.send, onPressed: () {}),
            const SizedBox(height: 32),
            AppSettingsTitle(
              text: i18n.fBLINXEngagementPolicy,
              isSmall: true,
            ),
            AppText.body300Font13('data'),
            const SizedBox(height: 64),
          ],
        ),
      ),
    );
  }
}

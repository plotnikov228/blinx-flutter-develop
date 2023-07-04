import 'package:auto_route/auto_route.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:blinx/presentation/widgets/app_button.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class AuthFullScreenDialog extends StatelessWidget {
  const AuthFullScreenDialog._({Key? key}) : super(key: key);

  static void show(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: context.colors.background,
      builder: (context) => Dialog(
        insetPadding: EdgeInsets.zero,
        backgroundColor: context.colors.background,
        child: const AuthFullScreenDialog._(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.auth;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: context.popRoute,
            icon: Assets.icons.close.svg(
              color: context.colors.text,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 32),
            Assets.icons.ballon.svg(width: 158, height: 155),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 48, 0, 26),
              child: AppText.headlineLarge32(
                context.localization.auth.authHeadline,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 32),
              child: AppText.titleLight(
                context.localization.auth.authCaption,
                textAlign: TextAlign.center,
              ),
            ),
            AppButton.rounded(
              title: context.localization.auth.sigupAction,
              onPressed: () => null,//context.navigateTo(const RegisterScreenRoute()),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 140,
        child: Column(
          children: [
            const Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 32,
              ),
              child: AppText.titleLight(i18n.loginCaption),
            ),
            AppButton.text(
              title: i18n.loginAction,
              textColor: context.colors.text,
              onPressed: () => context.navigateTo(const LoginScreenRoute()),
            )
          ],
        ),
      ),
    );
  }
}

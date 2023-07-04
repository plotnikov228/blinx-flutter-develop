import 'package:auto_route/auto_route.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_button.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class LoginNavigationBar extends StatelessWidget {
  const LoginNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.login;
    return SizedBox(
      height: 128,
      child: Column(
        children: [
          const Divider(color: Colors.grey),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: AppText.titleLight(i18n.doHaveAccount),
          ),
          AppButton.text(
            title: i18n.loginAction,
            textColor: context.colors.text,
            onPressed: context.popRoute,
          )
        ],
      ),
    );
  }
}

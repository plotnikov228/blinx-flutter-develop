import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class ResetPasswordTitle extends StatelessWidget {
  const ResetPasswordTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.resetPassword;
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 48, 0, 32),
      child: AppText.headlineLarge32(
        i18n.resetPasswordTitle,
        textAlign: TextAlign.center,
      ),
    );
  }
}

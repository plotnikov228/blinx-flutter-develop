import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class ResetPasswordDescription extends StatelessWidget {
  const ResetPasswordDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.resetPassword;
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 32),
      child: AppText.titleLight(
        i18n.resetPasswordDescription,
        textAlign: TextAlign.center,
      ),
    );
  }
}

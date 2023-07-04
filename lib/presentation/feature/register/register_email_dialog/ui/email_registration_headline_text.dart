import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class EmailRegistrationHeadlineText extends StatelessWidget {
  const EmailRegistrationHeadlineText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.registration;
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 48, 0, 32),
      child: AppText.headlineLarge32(
        i18n.registrationWithEmailHeadline,
        textAlign: TextAlign.center,
      ),
    );
  }
}

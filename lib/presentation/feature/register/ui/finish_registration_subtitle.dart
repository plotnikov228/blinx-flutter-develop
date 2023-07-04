import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class FinishRegistrationSubtitle extends StatelessWidget {
  const FinishRegistrationSubtitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.login;
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 32),
      child: AppText.titleLight(
        i18n.title,
        textAlign: TextAlign.center,
      ),
    );
  }
}

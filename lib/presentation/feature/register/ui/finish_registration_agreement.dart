import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class FinishRegistrationAgreement extends StatelessWidget {
  const FinishRegistrationAgreement({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.registration;
    return Align(
      alignment: AlignmentDirectional.center,
      child: AppText.bodySmall(
        i18n.registrationAgreement,
        textAlign: TextAlign.center,
      ),
    );
  }
}

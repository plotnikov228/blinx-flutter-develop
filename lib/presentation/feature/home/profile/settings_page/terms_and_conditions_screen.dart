import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:blinx/presentation/widgets/app_bar/blinx_app_bar.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  Widget paragraph(text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: AppText.body500(
        text.replaceAll(RegExp(r'\\n\s*'), '\n\n'),
        fontSize: 14,
      ),
    );
  }

  Widget title(text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: AppText.body500(
        text.replaceAll(RegExp(r'\\n\s*'), '\n\n'),
        fontSize: 16,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BlinxAppBar.normal(
        title: context.localization.profile.termsAndConditions,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Directionality.of(context) == TextDirection.ltr
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      paragraph(
                        context.localization.termsAndConditions.paragraph1,
                      ),
                      title(
                        context.localization.termsAndConditions.title1,
                      ),
                      paragraph(
                        context.localization.termsAndConditions.paragraph2,
                      ),
                      title(
                        context.localization.termsAndConditions.title2,
                      ),
                      paragraph(
                        context.localization.termsAndConditions.paragraph3,
                      ),
                      title(
                        context.localization.termsAndConditions.title3,
                      ),
                      paragraph(
                        context.localization.termsAndConditions.paragraph4,
                      ),
                      title(
                        context.localization.termsAndConditions.title4,
                      ),
                      paragraph(
                        context.localization.termsAndConditions.paragraph5,
                      ),
                      title(
                        context.localization.termsAndConditions.title5,
                      ),
                      paragraph(
                        context.localization.termsAndConditions.paragraph6,
                      ),
                      title(
                        context.localization.termsAndConditions.title6,
                      ),
                      paragraph(
                        context.localization.termsAndConditions.paragraph7,
                      ),
                      title(
                        context.localization.termsAndConditions.title7,
                      ),
                      paragraph(
                        context.localization.termsAndConditions.paragraph8,
                      ),
                      title(
                        context.localization.termsAndConditions.title8,
                      ),
                      paragraph(
                        context.localization.termsAndConditions.paragraph9,
                      ),
                      title(
                        context.localization.termsAndConditions.title9,
                      ),
                      paragraph(
                        context.localization.termsAndConditions.paragraph10,
                      ),
                      title(
                        context.localization.termsAndConditions.title10,
                      ),
                      paragraph(
                        context.localization.termsAndConditions.paragraph11,
                      ),
                      title(
                        context.localization.termsAndConditions.title11,
                      ),
                      paragraph(
                        context.localization.termsAndConditions.paragraph12,
                      ),
                      title(
                        context.localization.termsAndConditions.title12,
                      ),
                      paragraph(
                        context.localization.termsAndConditions.paragraph13,
                      ),
                      title(
                        context.localization.termsAndConditions.title13,
                      ),
                      paragraph(
                        context.localization.termsAndConditions.paragraph14,
                      ),
                      title(
                        context.localization.termsAndConditions.title14,
                      ),
                      paragraph(
                        context.localization.termsAndConditions.paragraph15,
                      ),
                      title(
                        context.localization.termsAndConditions.title15,
                      ),
                      paragraph(
                        context.localization.termsAndConditions.paragraph16,
                      ),
                      title(
                        context.localization.termsAndConditions.title16,
                      ),
                      paragraph(
                        context.localization.termsAndConditions.paragraph17
                            .replaceAll('\\n', '\n'),
                      ),
                      title(
                        context.localization.termsAndConditions.title17,
                      ),
                      paragraph(
                        context.localization.termsAndConditions.paragraph18,
                      ),
                    ])
              : SizedBox(),
        ),
      ),
    );
  }
}

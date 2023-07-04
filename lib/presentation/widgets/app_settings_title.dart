import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class AppSettingsTitle extends StatelessWidget {
  const AppSettingsTitle({
    Key? key,
    required this.text,
    this.isSmall = false,
  }) : super(key: key);

  final String text;
  final bool isSmall;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 12.0),
      width: double.infinity,
      child: isSmall
          ? AppText.normal(
              text,
              textAlign: TextAlign.start,
            )
          : AppText.body300Font20(
              text,
              textAlign: TextAlign.start,
            ),
    );
  }
}

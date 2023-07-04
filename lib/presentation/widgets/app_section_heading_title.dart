import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class AppSectionHeadingTitle extends StatelessWidget {
  final String title;
  final String? seeAllText;
  final void Function()? onSeeAllTap;

  const AppSectionHeadingTitle({
    Key? key,
    required this.title,
    this.seeAllText,
    this.onSeeAllTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppText.body500(
            title,
            fontSize: 18,
          ),
          if (seeAllText != null)
            GestureDetector(
              onTap: onSeeAllTap,
              child: AppText.body300(
                seeAllText!,
                fontSize: 14,
              ),
            ),
        ],
      ),
    );
  }
}

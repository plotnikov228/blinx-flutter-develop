import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class AppExpandedListTileItemText extends StatelessWidget {
  const AppExpandedListTileItemText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: AppText.body(text),
    );
  }
}

import 'package:blinx/presentation/widgets/app_bar/ui/leading_action_button.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class AppBarNormalContent extends StatelessWidget {
  const AppBarNormalContent({
    super.key,
    this.title,
    this.disableLeadingIcon = false,
    this.actions,
  });

  final String? title;
  final bool disableLeadingIcon;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (disableLeadingIcon == false) const LeadingActionButton(),
        if (disableLeadingIcon == false) const SizedBox(width: 10),
        if (title != null)
          AppText.body800(
            title!,
            fontSize: 20,
          ),
        const Spacer(),
        if (actions != null)
          Row(
            children: actions ?? [],
          ),
      ],
    );
  }
}

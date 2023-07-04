import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/feature/explore/widgets/search_text_field.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_bar/ui/leading_action_button.dart';
import 'package:flutter/material.dart';

class AppBarSearchContent extends StatelessWidget {
  const AppBarSearchContent({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const LeadingActionButton(),
        const SizedBox(width: 24),
        Expanded(
          child: GestureDetector(
            onTap: onTap,
            child: SearchTextField(
              paddingEnd: 0,
              prefixIcon: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(18, 8, 18, 8),
                child: Assets.icons.search.svg(
                  color: context.colors.text,
                ),
              ),
              suffix: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Assets.icons.closeSmall.svg(
                  color: context.colors.text,
                ),
              ),
              labelText: context.localization.explore.search,
              enabled: false,
            ),
          ),
        ),
      ],
    );
  }
}

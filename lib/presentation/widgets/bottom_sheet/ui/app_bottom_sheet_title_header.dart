import 'package:auto_route/auto_route.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class AppBottomSheetTitleHeader extends StatelessWidget {
  const AppBottomSheetTitleHeader({
    Key? key,
    this.sheetTitle,
    required this.showCloseIcon,
  }) : super(key: key);

  final String? sheetTitle;
  final bool showCloseIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: (sheetTitle != null)
              ? Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 4.0,
                  ),
                  child: AppText.headlineSmall(
                    sheetTitle!,
                    maxLines: 2,
                  ),
                )
              : const SizedBox(),
        ),
        if (showCloseIcon)
          IconButton(
            icon: Assets.icons.close.svg(
              color: context.colors.text,
            ),
            onPressed: context.router.pop,
          )
      ],
    );
  }
}

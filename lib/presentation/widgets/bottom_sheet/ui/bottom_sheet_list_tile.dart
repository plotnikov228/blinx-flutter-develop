import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:blinx/presentation/widgets/svg_icon.dart';
import 'package:flutter/material.dart';

class BottomSheetListTile extends StatelessWidget {
  const BottomSheetListTile({
    Key? key,
    required this.text,
    this.svgPath,
    this.onTap,
  }) : super(key: key);

  final String text;
  final String? svgPath;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: ListTile(
        onTap: onTap,
        leading: Padding(
          padding: const EdgeInsets.only(bottom: 2.0),
          child: svgPath == null
              ? const SizedBox()
              : SvgIcon.from(
                  svgPath!,
                  color: context.colors.text,
                ),
        ),
        minLeadingWidth: 12,
        title: AppText.body700Font16(
          text,
          color: context.colors.text,
        ),
      ),
    );
  }
}

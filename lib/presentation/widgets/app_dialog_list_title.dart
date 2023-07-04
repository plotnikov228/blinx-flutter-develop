import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_network_image.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class AppDialogListTile extends StatelessWidget {
  const AppDialogListTile({
    Key? key,
    this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.onTap,
    this.isChecked = false,
  }) : super(key: key);

  final String? imageUrl;
  final String title;
  final String subtitle;
  final Function() onTap;
  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: VisualDensity.compact,
      onTap: onTap,
      dense: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      horizontalTitleGap: 8,
      leading: imageUrl != null
          ? Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: SizedBox(
                width: 32,
                height: 32,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: AppNetworkImage(
                    imageUrl: imageUrl!,
                  ),
                ),
              ),
            )
          : null,
      trailing:
          isChecked ? Assets.icons.checked.svg() : const SizedBox.shrink(),
      title: AppText.body500(
        title,
        fontSize: 14,
        color: context.colors.black,
      ),
      subtitle: AppText.body500(
        subtitle,
        fontSize: 14,
        color: context.colors.black,
      ),
    );
  }
}

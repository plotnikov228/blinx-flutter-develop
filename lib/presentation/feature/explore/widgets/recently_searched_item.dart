import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class RecentlySearchedListItem extends StatelessWidget {
  const RecentlySearchedListItem({super.key, required this.title, this.onTap});

  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final currentDirection = Directionality.of(context);
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
              border: Border(
            bottom: BorderSide(
              color: context.colors.divider,
            ),
          )),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16, 10, 16, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: AppText.body800(title, fontSize: 14),
                ),
                currentDirection == TextDirection.rtl
                    ? Assets.icons.leadingLeft.svg(
                        color: context.colors.darkGrey,
                      )
                    : Assets.icons.leadingRight.svg(
                        color: context.colors.darkGrey,
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

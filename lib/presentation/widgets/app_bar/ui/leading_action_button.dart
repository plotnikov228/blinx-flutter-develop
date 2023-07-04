import 'package:auto_route/auto_route.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:flutter/material.dart';

class LeadingActionButton extends StatelessWidget {
  const LeadingActionButton({
    super.key,
    this.color,
    this.size = 18,
  });

  final Color? color;
  final double size;

  @override
  Widget build(BuildContext context) {
    final currentDirection = Directionality.of(context);

    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: context.popRoute,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox.fromSize(
              size: Size.square(size),
              child: currentDirection == TextDirection.ltr
                  ? Assets.icons.leadingLeft
                      .svg(color: color ?? context.colors.text)
                  : Assets.icons.leadingRight
                      .svg(color: color ?? context.colors.text),
            ),
          ),
        ),
      ),
    );
  }
}

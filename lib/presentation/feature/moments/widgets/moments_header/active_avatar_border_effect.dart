import 'package:blinx/presentation/resources/resources.dart';
import 'package:flutter/material.dart';

class ActiveAvaterBorderEffect extends StatelessWidget {
  const ActiveAvaterBorderEffect({
    Key? key,
    required this.child,
    this.isActive = true,
  }) : super(key: key);

  final Widget child;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    if (!isActive) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: child,
      );
    }
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: context.colors.orange.withOpacity(0.3),
          width: 4,
        ),
        shape: BoxShape.circle,
        color: context.colors.black,
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: context.colors.orange.withOpacity(0.48),
            width: 4,
          ),
          shape: BoxShape.circle,
          color: context.colors.black,
        ),
        child: child,
      ),
    );
  }
}

import 'dart:math';

import 'package:blinx/presentation/resources/resources.dart';
import 'package:flutter/material.dart';

class OverlayWhileScrollingUp extends StatefulWidget {
  const OverlayWhileScrollingUp({
    Key? key,
    required this.scrollController,
    required this.child,
  }) : super(key: key);

  final ScrollController scrollController;
  final Widget child;

  @override
  State<OverlayWhileScrollingUp> createState() =>
      _OverlayWhileScrollingUpState();
}

class _OverlayWhileScrollingUpState extends State<OverlayWhileScrollingUp> {
  double verticalScrolledFactor = 0.0;

  @override
  void initState() {
    super.initState();

    widget.scrollController.addListener(() {
      final controller = widget.scrollController;

      if (controller.position.pixels < 80) {
        setState(() {
          verticalScrolledFactor = max(controller.position.pixels / 100, 0);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        fit: StackFit.expand,
        children: [
          widget.child,
          Container(
            width: double.infinity,
            height: double.infinity,
            color: context.colors.black.withOpacity(
              verticalScrolledFactor,
            ),
          ),
        ],
      ),
    );
  }
}

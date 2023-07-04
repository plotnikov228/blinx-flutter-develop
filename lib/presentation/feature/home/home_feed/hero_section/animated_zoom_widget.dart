import 'package:blinx/domain/entities/article.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

typedef ValueType = Article;

class AnimatedZoomWidget extends StatelessWidget {
  const AnimatedZoomWidget({
    Key? key,
    required this.child,
    required this.scaleDuration,
    required this.animationController,
  }) : super(key: key);

  final Widget child;
  final Duration scaleDuration;
  final AnimationController animationController;

  @override
  Widget build(BuildContext context) {
    return child
        .animate(
          controller: animationController,
          onPlay: (c) => c.repeat(reverse: true),
        )
        .custom(
          duration: scaleDuration,
          builder: (context, value, child) {
            final scale = 1.0 + (value * .15);
            return Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity().scaled(scale, scale, scale),
              child: child,
            );
          },
        );
  }
}

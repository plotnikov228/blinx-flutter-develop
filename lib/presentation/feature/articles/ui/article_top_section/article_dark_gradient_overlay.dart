import 'package:blinx/presentation/resources/resources.dart';
import 'package:flutter/material.dart';

class ArticleDarkGradientOverlay extends StatelessWidget {
  const ArticleDarkGradientOverlay({
    Key? key,
    required this.child,
    this.stops = const [0, 0.2, 0.45, 1],
  }) : super(key: key);

  final Widget child;
  final List<double> stops;

  @override
  Widget build(BuildContext context) {
    return Container(
      foregroundDecoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            context.colors.black.withOpacity(0.8),
            Colors.transparent,
            Colors.transparent,
            context.colors.black
          ],
          stops: stops,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: child,
    );
  }
}

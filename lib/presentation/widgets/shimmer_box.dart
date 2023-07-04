import 'package:blinx/presentation/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerBox extends StatelessWidget {
  const ShimmerBox({
    Key? key,
    this.size = 512,
    this.borderRadius = 0,
    this.width,
    this.height,
    this.child,
  }) : super(key: key);

  final double size;
  final double borderRadius;
  final double? width;
  final double? height;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final _height = height ?? width ?? size;
    final _width = width ?? height ?? size;

    final defaultChild = ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Container(
        height: _height,
        width: _width,
        color: context.colors.background,
      ),
    );

    return IgnorePointer(
      child: SizedBox(
        height: _height,
        width: _width,
        child: Shimmer.fromColors(
          baseColor: context.colors.darkGrey,
          highlightColor: context.colors.grey.withOpacity(0.5),
          child: child ?? defaultChild,
        ),
      ),
    );
  }
}

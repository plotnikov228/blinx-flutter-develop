import 'package:blinx/presentation/widgets/shimmer_box.dart';
import 'package:flutter/material.dart';

class HeroSectionShimmer extends StatelessWidget {
  const HeroSectionShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final heroHeight = screenSize.height * .6;
    return SizedBox(
      height: heroHeight,
      width: double.infinity,
      child: const ShimmerBox(),
    );
  }
}

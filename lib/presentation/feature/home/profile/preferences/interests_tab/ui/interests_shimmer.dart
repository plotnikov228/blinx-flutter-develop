import 'package:blinx/presentation/widgets/shimmer_box.dart';
import 'package:flutter/material.dart';

class InterestsShimmer extends StatelessWidget {
  const InterestsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      alignment: WrapAlignment.start,
      children: List.generate(
        20,
        (index) => ClipRRect(
          borderRadius: BorderRadius.circular(6.0),
          child: SizedBox(
            width: index.isEven ? 120 : 80,
            height: 54,
            child: const ShimmerBox(),
          ),
        ),
      ),
    );
  }
}

import 'package:blinx/presentation/widgets/shimmer_box.dart';
import 'package:flutter/material.dart';

class SeeAllArticleShimmer extends StatelessWidget {
  const SeeAllArticleShimmer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemExtent: 432,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 8,
          ),
          child: Opacity(
            opacity: 0.5,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: const ShimmerBox(),
            ),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:blinx/presentation/widgets/shimmer_box.dart';

class GridArticlesShimmerView extends StatelessWidget {
  const GridArticlesShimmerView({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return 
    GridView.builder(
      shrinkWrap: true,
      itemCount: 4,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.only(top: 1.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 1.0,
        mainAxisSpacing: 1.0,
        childAspectRatio: .85,
      ),
      itemBuilder: (_, index) {
        return const ShimmerBox();
      },
    );
  }
}

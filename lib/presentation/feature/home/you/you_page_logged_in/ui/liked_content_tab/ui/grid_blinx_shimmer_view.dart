import 'package:flutter/material.dart';
import 'package:blinx/presentation/widgets/shimmer_box.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/presentation/resources/resources.dart';

class GridBlinxShimmerView extends StatelessWidget {
  const GridBlinxShimmerView({
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
        childAspectRatio: 607/1080,
      ),
      itemBuilder: (_, index) {
        return Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            const ShimmerBox(), 
            IconButton(
              onPressed: (){},
              icon: Assets.icons.play.svg(color: context.colors.white),
            )
          ]
        );
      },
    );
  }
}

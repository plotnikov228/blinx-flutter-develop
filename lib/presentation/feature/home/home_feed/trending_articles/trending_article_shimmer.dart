import 'package:blinx/presentation/widgets/shimmer_box.dart';
import 'package:flutter/material.dart';

class TrendingArticleShimmer extends StatelessWidget {
  const TrendingArticleShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 350,
          child: ListView.builder(
            padding: const EdgeInsets.only(
              left: 16,
            ),
            itemCount: 2,
            controller: PageController(
              viewportFraction: .9,
            ),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                width: 350.0,
                padding: EdgeInsetsDirectional.only(
                  end: (index == 1) ? 0 : 16,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: const SizedBox(
                    child: ShimmerBox(),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

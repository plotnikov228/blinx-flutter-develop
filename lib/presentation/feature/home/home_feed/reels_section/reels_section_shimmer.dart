import 'package:blinx/presentation/widgets/shimmer_box.dart';
import 'package:flutter/material.dart';

class ReelsSectionShimmer extends StatelessWidget {
  const ReelsSectionShimmer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: SizedBox(
              height: 30,
              width: 100,
              child: ShimmerBox(),
            )),
        const SizedBox(
          height: 12,
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    EdgeInsetsDirectional.only(start: (index == 0) ? 16 : 0),
                child: SizedBox(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(end: 16.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.273,
                        width: 160,
                        child: const ShimmerBox(),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

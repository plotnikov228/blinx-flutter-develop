import 'package:blinx/presentation/widgets/shimmer_box.dart';
import 'package:flutter/material.dart';

class AdvertisementViewShimmer extends StatelessWidget {
  const AdvertisementViewShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final adWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: SizedBox(
        height: adWidth,
        width: adWidth,
        child: const ShimmerBox(),
      ),
    );
  }
}

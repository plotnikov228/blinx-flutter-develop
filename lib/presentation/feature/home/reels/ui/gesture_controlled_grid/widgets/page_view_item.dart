import 'package:blinx/presentation/feature/home/reels/ui/gesture_controlled_grid/widgets/infinity_page_view.dart';
import 'package:blinx/presentation/feature/home/reels/ui/new_reels_grid_view.dart';
import 'package:flutter/material.dart';
InfinityPageView PageViewItem(
    {required final List<Widget> widgetMatrix,
    required InfinityPageController controller,
      Axis direction = Axis.horizontal,
      bool canSwipe = true,
    required Function(int) onPageChanged}) {

  return InfinityPageView(
    scrollDirection: direction,
    physics: canSwipe ? const PageScrollPhysics() : const NeverScrollableScrollPhysics(),
    controller: controller,
    onPageChanged: onPageChanged,
    itemBuilder: (context, index) {
      return widgetMatrix[index];
    }, itemCount: controller.itemCount,);
}

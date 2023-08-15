import 'package:flutter/material.dart';

import '../omnidirectional_page_view.dart';
import 'infinity_page_view.dart';
Widget PageViewItem(
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
      }, itemCount: controller.itemCount
  );
}

import 'package:blinx/presentation/feature/home/reels/ui/new_reels_grid_view.dart';
import 'package:flutter/material.dart';

PageView PageViewItem(
    {required final List<List<Widget>> widgetMatrix,
    required int currentRow,
    required PageController controller,
      bool canSwipe = true,
    required Function(int) onPageChanged}) {

  return PageView.builder(
    physics: canSwipe ? const PageScrollPhysics() : const NeverScrollableScrollPhysics(),
    controller: controller,
    itemCount: widgetMatrix[currentRow].length,
    onPageChanged: onPageChanged,
    itemBuilder: (context, index) {
     if(index == 0) print('this is empty page = ${(widgetMatrix[currentRow][index] as NewReelsGridView).reelsList}');
      return widgetMatrix[currentRow][index];
    });
}

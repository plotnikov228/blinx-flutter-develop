import 'package:blinx/presentation/feature/home/reels/ui/gesture_controlled_grid/widgets/page_view_item.dart';
import 'package:flutter/material.dart';
import 'dart:async';
class GestureControlledGridWidget extends StatefulWidget {
  final List<List<Widget>> widgetMatrix;
  final int rowIndex;
  final int columnIndex;
  final Function? onRightSwipe;
  final Function? onLeftSwipe;
  final Function? onTopSwipe;
  final Function? onBottomSwipe;
  final Function? onRightTopSwipe;
  final Function? onRightBottomSwipe;
  final Function? onLeftTopSwipe;
  final Function? onLeftBottomSwipe;
  final Function(int row, int column) onSwipe;

  const GestureControlledGridWidget(
      {super.key,
      required this.widgetMatrix,
      this.onRightSwipe,
      this.onLeftSwipe,
      this.onTopSwipe,
      this.onBottomSwipe,
      this.onRightTopSwipe,
      this.onRightBottomSwipe,
      this.onLeftTopSwipe,
      this.onLeftBottomSwipe,
      required this.rowIndex,
      required this.columnIndex, required this.onSwipe});

  @override
  State<GestureControlledGridWidget> createState() =>
      _GestureControlledGridWidgetState();
}

class _GestureControlledGridWidgetState
    extends State<GestureControlledGridWidget> with TickerProviderStateMixin {




  late PageController horizontalController;
  late PageController verticalController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 200));
     horizontalController = PageController(initialPage: widget.columnIndex, keepPage: false);
      verticalController = PageController(initialPage: widget.rowIndex, keepPage: false);
    _animation = Tween<double>(
      begin: 1.0,
      end: 1.3,
    ).animate(_animationController);

  }

  int? row;
  int? column;

  late AnimationController _animationController;
  late Animation<double> _animation;
  bool canSwipe = true;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final pageViews = List<Widget>.generate(
        widget.widgetMatrix.length,
        (index) => PageViewItem(
          canSwipe: canSwipe,
            widgetMatrix: widget.widgetMatrix,
            currentRow: index,
            controller: horizontalController,
            onPageChanged: (int page) async {
              await _animationController.forward().then((value) => _animationController.reverse());
              row ??= widget.rowIndex;
              column = page;
              widget.onSwipe(row!, column!);

              print('page indexes was changed on $row and $column');
            }));
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, _widget) => Transform.scale(
          scale: _animation.value,
          child:SizedBox(
        height: size.height,
        width: size.width,
        child:   PageView(
            physics: canSwipe ? const PageScrollPhysics() : const NeverScrollableScrollPhysics(),
            controller: verticalController,
            scrollDirection: Axis.vertical,
            onPageChanged: (page) async {

              await _animationController.forward().then((value) => _animationController.reverse());
              column ??= widget.columnIndex;
              row = page;
              widget.onSwipe(row!, column!);
              print('page indexes was changed on $row and $column');
            },
            children: pageViews),
        ),
        ),
    );
  }

  List<T> _getListFromMatrix<T>(List<List<T>> matrix) {
    final list = <T>[];
    for (final matrixItem in matrix) {
      for (final itemInMatrixItem in matrixItem) {
        list.add(itemInMatrixItem);
      }
    }
    return list;
  }
}

enum Directions {
  right,
  left,
  top,
  bottom,
}

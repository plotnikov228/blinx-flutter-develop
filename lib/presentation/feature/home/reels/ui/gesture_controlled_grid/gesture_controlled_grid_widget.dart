import 'package:blinx/presentation/feature/home/reels/ui/gesture_controlled_grid/widgets/infinity_page_view.dart';
import 'package:blinx/presentation/feature/home/reels/ui/gesture_controlled_grid/widgets/page_view_item.dart';
import 'package:blinx/presentation/feature/home/reels/ui/new_reels_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:async';

import 'package:video_player/video_player.dart';

import '../../cubit/reels_cubit.dart';

class GestureControlledGridWidget extends StatefulWidget {
  final List<List<Widget>> widgetMatrix;
  final List<List<VideoPlayerController?>?> vpControllerMatrix;
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
      required this.columnIndex,
      required this.onSwipe,
      required this.vpControllerMatrix});

  @override
  State<GestureControlledGridWidget> createState() =>
      _GestureControlledGridWidgetState();
}

class _GestureControlledGridWidgetState
    extends State<GestureControlledGridWidget> with TickerProviderStateMixin {
  late InfinityPageController horizontalController;
  late InfinityPageController verticalController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.vpControllerMatrix[widget.rowIndex]![widget.columnIndex]!.play();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
    horizontalController = InfinityPageController(
        initialPage: widget.columnIndex,
        keepPage: false,
        itemCount: widget.widgetMatrix[0].length);
    verticalController = InfinityPageController(
        initialPage: widget.rowIndex,
        keepPage: false,
        itemCount: widget.widgetMatrix.length);
    _animation = Tween<double>(
      begin: 1.0,
      end: 1.3,
    ).animate(_animationController);
    row ??= widget.rowIndex;
    column ??= widget.columnIndex;
  }

  int? row;
  int? column;

  late AnimationController _animationController;
  late Animation<double> _animation;
  bool canSwipe = true;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ReelsCubit>();
    final size = MediaQuery.of(context).size;
    final pageViews = List<Widget>.generate(
        widget.widgetMatrix.length,
        (index) => PageViewItem(
            canSwipe: canSwipe,
            widgetMatrix: widget.widgetMatrix[index],
            controller: horizontalController,
            onPageChanged: (int page) async {
              try {
                await widget.vpControllerMatrix[row!]![column!]!.pause();
                await widget.vpControllerMatrix[row!]![column!]!.dispose();
                widget.vpControllerMatrix[row!]![column!] = null;
              } catch(_ ) {

              }
              await _animationController
                  .forward()
                  .then((value) => _animationController.reverse());
              row ??= widget.rowIndex;
              column = page % widget.widgetMatrix[row!].length;
              widget.onSwipe(row!, column!);
              try {
                if (widget.vpControllerMatrix[row!]![column!] == null) {
                  widget.vpControllerMatrix[row!]![column!] =
                      cubit.addVP(row!, column!);
                } else if (widget.vpControllerMatrix[row!]![column!]!.value.isInitialized) {
                  widget.vpControllerMatrix[row!]![column!] =
                      cubit.addVP(row!, column!);
                }
                await widget.vpControllerMatrix[row!]![column!]!.play();
              } catch (_) {

              }
              //_setPreviewVideoInWidget();
              setState(() {});
              print('page indexes was changed on $row and $column');
            }));
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, _widget) => Transform.scale(
        scale: _animation.value,
        child: SizedBox(
            height: size.height,
            width: size.width,
            child: PageViewItem(
              direction: Axis.vertical,
              widgetMatrix: pageViews,
              controller: verticalController,
              onPageChanged: (page) async {
                try {
                  await widget.vpControllerMatrix[row!]![column!]!.pause();
                  await widget.vpControllerMatrix[row!]![column!]!.dispose();
                  widget.vpControllerMatrix[row!]![column!] = null;
                } catch (_) {}
                await _animationController
                    .forward()
                    .then((value) => _animationController.reverse());
                column ??= widget.columnIndex;

                row = page % widget.widgetMatrix.length;

                widget.onSwipe(row!, column!);
                try {
                  if (widget.vpControllerMatrix[row!]![column!] == null) {
                    widget.vpControllerMatrix[row!]![column!] =
                        cubit.addVP(row!, column!);
                  }
                  await widget.vpControllerMatrix[row!]![column!]!.play();
                } catch (_) {}
                setState(() {});
                print('page indexes was changed on $row and $column');
              },
            )),
      ),
    );
  }
}

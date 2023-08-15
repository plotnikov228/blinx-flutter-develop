import 'package:better_video_player/better_video_player.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:screenshot/screenshot.dart';
import 'animations.dart';
import 'dart:ui' as ui;
import 'package:graphx/graphx.dart' as graphx;

import 'fisheye.dart';

const _upperLimitScroll = 60;
const _lowerLimitScroll = -60;
const _swipeDuration = Duration(milliseconds: 500);
const _fisheyeDuration = Duration(milliseconds: 900);

// ignore: must_be_immutable
class OmnidirectionalPageView extends StatefulWidget {
  final List<AxisDirection> fisheyeDirection;
  final List<List<Widget>> widgetMatrix;
  final List<List<BetterVideoPlayerController?>?>? vpControllerMatrix;
  final Size size;
  final int rowIndex;
  final int columnIndex;
  final bool widgetMatrixCanUpdate;
  final Function(int row, int column) onSwipe;

  const OmnidirectionalPageView(
      {super.key,
      required this.widgetMatrix,
      required this.rowIndex,
      required this.columnIndex,
      required this.onSwipe,
      required this.size,
      this.fisheyeDirection = const [
        AxisDirection.up,
        AxisDirection.left,
        AxisDirection.down,
        AxisDirection.right
      ],
      this.widgetMatrixCanUpdate = true,
      this.vpControllerMatrix});

  @override
  State<OmnidirectionalPageView> createState() =>
      _OmnidirectionalPageViewState();
}

class _OmnidirectionalPageViewState extends State<OmnidirectionalPageView>
    with TickerProviderStateMixin {
  final animation = ScrollableGridAnimation();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _animationController =
        AnimationController(vsync: this, duration: _swipeDuration);
    _fisheyeController = AnimationController(
        vsync: this,
        duration:
            Duration(milliseconds: (_swipeDuration.inMilliseconds / 2).round()))
      ..addListener(() async {
        //_fisheyeFirst();
        //_fisheyeSecond();
      });
    widgetMatrix =
        widget.widgetMatrix.getRange(0, widget.widgetMatrix.length).toList();

    row = widget.rowIndex;
    column = widget.columnIndex;
  }

  _fisheyeFirst() async {
    if (_showFisheye && canSwipe) {
      await screenshotController.captureAsUiImage().then((value) {
        _fisheyeImage = value;
      });
      _fisheyeAngle = _fisheyeController.value;
      setState(() {});
    }
  }

  _fisheyeSecond() {
    _showFisheye = false;
    Timer(const Duration(milliseconds: 400), () async {
      if (canShowFisheye) {
        _showFisheye = true;
        await screenshotController.captureAsUiImage().then((value) {
          _fisheyeImage = value;
          _showFisheye = true;
          setState(() {});
          Timer(_fisheyeDuration, () {
            _showFisheye = false;
            setState(() {});
          });
        });
      } else {
        canShowFisheye = true;
      }
    });
  }

  _fisheyeThird(VoidCallback then) async {
    AxisDirection? horizontalDir;
    AxisDirection? verticalDir;

    if (canSwipe) {
      if (changedDetails!.dy > _upperLimitScroll) {
        verticalDir = AxisDirection.up;
      }
      if (changedDetails!.dy < _lowerLimitScroll) {
        verticalDir = AxisDirection.down;
      }
      if (changedDetails!.dx > _upperLimitScroll) {
        horizontalDir = AxisDirection.left;
      }
      if (changedDetails!.dx < _lowerLimitScroll) {
        horizontalDir = AxisDirection.right;
      }
    }
    if ((verticalDir != null && horizontalDir == null) ||
        (verticalDir == null && horizontalDir != null)) {
      bool thenWasDone = false;
      for (final item in widget.fisheyeDirection) {
        if (verticalDir == item || horizontalDir == item) {
          await screenshotController.captureAsUiImage().then((value) {
            _fisheyeImage = value;
            _showFisheye = true;
            setState(() {});
            thenWasDone = true;
            Timer(_fisheyeDuration, () {
              _showFisheye = false;
              setState(() {});
              then();
            });
          });
          break;
        }
      }
      if (!thenWasDone) {
        then();
      }
    } else {
      then();
    }
  }

  bool canShowFisheye = false;

  late int row;
  late int column;

  int? realRow;
  int? realColumn;

  late AnimationController _animationController;
  late AnimationController _fisheyeController;
  final screenshotController = ScreenshotController();
  bool canSwipe = false;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }

  List<List<Widget>> widgetMatrix = [];

  Offset? startDetails;
  Offset? updatedDetails;
  Offset? changedDetails;

  List<List<Offset>> _setOffsets(
      {Offset? changedPosition,
      required Size size,
      int? newRow,
      int? newColumn,
      List<List<Widget>>? matrix}) {
    return animation.setOffsets(
        matrix: matrix ?? widgetMatrix,
        row: newRow ?? row,
        column: newColumn ?? column,
        changedPosition: changedPosition,
        size: size,
        changedRow: (index) {
          var i = index;
          if (canSwipe) {
            if (changedDetails!.dy > _upperLimitScroll) {
              i++;
            } else if (changedDetails!.dy < _lowerLimitScroll) {
              i--;
            }
          }
          return i;
        },
        changedColumn: (index) {
          var i = index;
          if (canSwipe) {
            if (changedDetails!.dx > _upperLimitScroll) {
              i++;
            } else if (changedDetails!.dx < _lowerLimitScroll) {
              i--;
            }
          }
          return i;
        },
        parentController: _animationController,
        canSwipe: canSwipe);
  }

  bool _userPositionOnOtherSide = false;
  bool _needUpdate = false;

  @override
  Widget build(BuildContext context) {
    final size = widget.size;
    if (widget.widgetMatrixCanUpdate) {
      if (!matrixSizeCompare(widgetMatrix, widget.widgetMatrix)) {
        try {
          if(realRow != row || realColumn != column) {
            if (_needUpdate) {
              realRow = row;
              realColumn = column;
              var dir = _getDirection(changedDetails);
              if ((dir ==
                  OmnidirectionalDirection.rightTop || dir ==
                  OmnidirectionalDirection.right || dir ==
                  OmnidirectionalDirection.rightBottom)) {
                realColumn = realColumn! + 1;
              }
              if ((dir ==
                  OmnidirectionalDirection.leftBottom || dir ==
                  OmnidirectionalDirection.bottom || dir ==
                  OmnidirectionalDirection.rightBottom)) {
                realRow = realRow! + 1;
              }
            }
            row = realRow!;
            column = realColumn!;
          }
          widgetMatrix = widget.widgetMatrix
              .getRange(0, widget.widgetMatrix.length)
              .toList();
        } catch (_) {}
      }
    }
      if (!matrixSizeCompare(animation.startOffsets, widgetMatrix) ||
          animation.startOffsets.isEmpty) {
        animation.startOffsets = _setOffsets(
          size: size,
          matrix: widgetMatrix,
        );
        setState(() {});
      }


    return Stack(
      children: [
        Screenshot(
          controller: screenshotController,
          child: GestureDetector(
            onPanStart: (details) {
              _animationController.reset();
              canSwipe = false;
              startDetails = details.globalPosition;
            },
            onPanUpdate: (details) {
              setState(() {
                updatedDetails = details.globalPosition;
                changedDetails = Offset(updatedDetails!.dx - startDetails!.dx,
                    updatedDetails!.dy - startDetails!.dy);
                _setOffsets(changedPosition: changedDetails, size: size);
              });
            },
            onPanEnd: (details) {
              if (changedDetails!.dx > _upperLimitScroll ||
                  changedDetails!.dx < _lowerLimitScroll ||
                  changedDetails!.dy > _upperLimitScroll ||
                  changedDetails!.dy < _lowerLimitScroll) {
                canSwipe = true;
              } else {
                canSwipe = false;
              }
              AxisDirection? horizontalDir;
              AxisDirection? verticalDir;

              setState(() {
                _setOffsets(
                    changedPosition: changedDetails,
                    size: size,
                    newRow: row,
                    newColumn: column);
              });

              _fisheyeThird(() {
                _animationController.forward().then((value) {
                  if (canSwipe) {
                    realColumn ??= column;
                    realRow ??= row;
                    if (changedDetails!.dy > _upperLimitScroll) {
                      verticalDir = AxisDirection.up;
                      row--;
                      realRow = realRow! - 1;

                      if (row == 0) {
                        widgetMatrix.insert(
                            0, widgetMatrix[widgetMatrix.length - 1]);
                        widgetMatrix.removeLast();
                        _needUpdate = true;
                        row = 1;
                      }
                      if (realRow! < 0) {
                        _userPositionOnOtherSide = true;

                        realRow = (realRow! % widgetMatrix.length).abs();
                      }
                    }
                    if (changedDetails!.dy < _lowerLimitScroll) {
                      verticalDir = AxisDirection.down;
                      row++;
                      realRow = realRow! + 1;

                      if (row > widgetMatrix.length - 1) row = 0;
                      if (row == widgetMatrix.length - 1) {
                        _needUpdate = true;

                        widgetMatrix.add(widgetMatrix[0]);
                        widgetMatrix.removeAt(0);

                        row = widgetMatrix.length - 2;
                      }
                      if (realRow! >= widgetMatrix.length) {
                        _userPositionOnOtherSide = true;

                        realRow = (widgetMatrix.length % realRow!).abs();
                      }
                    }
                    if (changedDetails!.dx > _upperLimitScroll) {
                      horizontalDir = AxisDirection.left;
                      column--;
                      realColumn = realColumn! - 1;
                      if (column < 0) column = widgetMatrix[row].length - 1;
                      if (realColumn! < 0) {
                        _userPositionOnOtherSide = true;
                        realColumn =
                            (realColumn! % widgetMatrix[row].length).abs();
                      }

                      if (column == 0) {
                        _needUpdate = true;

                        for (var i = 0; i < widgetMatrix.length; i++) {
                          widgetMatrix[i].insert(0, widgetMatrix[i].last);
                          widgetMatrix[i].removeLast();
                        }
                        column = 1;
                      }
                    }
                    if (changedDetails!.dx < _lowerLimitScroll) {
                      horizontalDir = AxisDirection.right;
                      column++;
                      realColumn = realColumn! + 1;
                      if (column > widgetMatrix[row].length - 1) column = 0;
                      if (realColumn! >= widgetMatrix.length) {
                        _userPositionOnOtherSide = true;
                        realColumn =
                            (widgetMatrix[row].length % realColumn!).abs();
                      }

                      if (column == widgetMatrix[row].length - 1) {
                        _needUpdate = true;

                        for (var i = 0; i < widgetMatrix.length; i++) {
                          widgetMatrix[i].add(widgetMatrix[i][0]);
                          widgetMatrix[i].removeAt(0);
                        }
                        column = widgetMatrix.length - 2;
                      }
                    }
                    setState(() {
                      canSwipe = false;
                      _setOffsets(
                        size: size,
                      );
                    });
                    widget.onSwipe(realRow!, realColumn!);
                  }
                });
              });
            },
            child: SizedBox(
              height: size.height,
              width: size.width,
              child: Stack(
                clipBehavior: Clip.none,
                children: animation.getWidgetsWithChangedOffsets(
                    widgetMatrix, _animationController),
              ),
            ),
          ),
        ),
        Visibility(
            visible: _showFisheye,
            child: _fisheyeImage == null
                ? Container(
                    height: 100,
                    width: 100,
                  )
                : IgnorePointer(
                    ignoring: true,
                    child: graphx.SceneBuilderWidget(
                      builder: () => graphx.SceneController(
                          front: DrawTriangleGridScene(
                        _fisheyeImage!,
                        size.width / 2,
                        size.height / 2,
                        damp: 0.98,
                        spring: 0.0025,
                        stiff: 0.02,
                      )),
                      autoSize: true,
                    ),
                  ))
      ],
    );
  }
}

double _fisheyeAngle = 0;
bool _showFisheye = false;
ui.Image? _fisheyeImage;

bool matrixSizeCompare(
    List<List<dynamic>> firstMatrix, List<List<dynamic>> secondMatrix) {
  if (firstMatrix.length != secondMatrix.length) {
    return false;
  } else if (firstMatrix[0].length != secondMatrix[0].length) {
    return false;
  }

  return true;
}

OmnidirectionalDirection _getDirection(Offset? changedDetails) {
  OmnidirectionalDirection? horizontalDir;
  OmnidirectionalDirection? verticalDir;

  if (changedDetails!.dy > _upperLimitScroll) {
    verticalDir = OmnidirectionalDirection.top;
  }
  if (changedDetails.dy < _lowerLimitScroll) {
    verticalDir = OmnidirectionalDirection.bottom;
  }
  if (changedDetails.dx > _upperLimitScroll) {
    horizontalDir = OmnidirectionalDirection.left;
  }
  if (changedDetails.dx < _lowerLimitScroll) {
    horizontalDir = OmnidirectionalDirection.right;
  }
  if ((verticalDir != null && horizontalDir == null) ||
      (verticalDir == null && horizontalDir != null)) {
    if (verticalDir != null) {
      return verticalDir;
    } else {
      return horizontalDir!;
    }
  } else {
    return _uniteOmnidirectionalDirections(horizontalDir!, verticalDir!);
  }
}

OmnidirectionalDirection _uniteOmnidirectionalDirections(
    OmnidirectionalDirection horizontal, OmnidirectionalDirection vertical) {
  if (horizontal == OmnidirectionalDirection.left) {
    if (vertical == OmnidirectionalDirection.bottom) {
      return OmnidirectionalDirection.leftBottom;
    } else {
      return OmnidirectionalDirection.leftTop;
    }
  } else {
    if (vertical == OmnidirectionalDirection.bottom) {
      return OmnidirectionalDirection.rightBottom;
    } else {
      return OmnidirectionalDirection.rightTop;
    }
  }
}

enum OmnidirectionalDirection {
  left,
  leftTop,
  top,
  rightTop,
  right,
  rightBottom,
  bottom,
  leftBottom
}

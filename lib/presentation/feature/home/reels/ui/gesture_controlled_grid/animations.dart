import 'dart:ui';

import 'package:flutter/material.dart';

import 'gesture_controlled_grid_widget.dart';

class ScrollableGridAnimation {
  List<List<Offset>> startOffsets = [];
  List<List<Animation<Offset>>> _animations = [];

  List<List<Offset>> setOffsets(
      {required List<List<dynamic>> matrix,
      Offset? changedPosition,
      required int row,
      required int column,
      required Size size,
      required bool canSwipe,
      required int Function(int) changedRow,
      required int Function(int) changedColumn,
      required AnimationController parentController}) {
    var _offsets = <List<Offset>>[];
    _animations = [];
    for (var i = 0; i < matrix.length; i++) {
      _offsets.add([]);
      _animations.add([]);
      for (var j = 0; j < matrix[i].length; j++) {
        if(row == i && column == j) {
          print('current offset on index $i $j');
        }
        final newRow = changedRow(i);
        final newColumn = changedColumn(j);
        var differentY = (i - row) * (size.height - 60);
        var differentX = (j - column) * (size.width);
        var offset = Offset(differentX.toDouble() + (changedPosition?.dx ?? 0),
            differentY.toDouble() + (changedPosition?.dy ?? 0));
        late Animation<Offset> anim;
        if (matrixSizeCompare(startOffsets, matrix)) {
          if (i != newRow || j != newColumn) {
            print(
                'real indexes - $i $j \n changed indexes - $newRow $newColumn');
            print('changed position to center in x - ${newColumn - column}, standard - ${j - column}');
            print('changed position to center in y - ${newRow - row}, standard - ${i - row}');
          }
          final changedStartOffset = Offset(
            (newColumn - column) * (size.width), (newRow - row) * (size.height - 60),);
          anim = Tween<Offset>(
                  begin: offset,
                  end: canSwipe
                      ? changedStartOffset
                      : Offset(differentX, differentY))
              .animate(parentController);
        } else {
          print('start offsets < matrix');
          anim = Tween<Offset>(begin: offset, end: offset)
              .animate(parentController);
        }
        _animations[i].add(anim);
        _offsets[i].add(offset);
      }
    }

    return _offsets;
  }

  List<Widget> getWidgetsWithChangedOffsets(
      List<List<Widget>> matrix, AnimationController parentController) {
    final list = <Widget>[];
    for (var i = 0; i < matrix.length; i++) {
      for (var j = 0; j < matrix[i].length; j++) {
        try {
          list.add(
            AnimatedBuilder(
              animation: _animations[i][j],
              builder: (_, __) =>
                  Positioned(
                    top: _animations[i][j].value.dy,
                    left: _animations[i][j].value.dx,
                    child: matrix[i][j],
                  ),
            ),
          );
        } catch (_) {
          rethrow;
        }

      }
    }
    return list;
  }
}

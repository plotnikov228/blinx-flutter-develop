import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/domain/usecases/reels/get_reels_usecase.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/material.dart';
import '../../../../../domain/entities/paginated_list/paginated_reels.dart';
import '../../reels_details/reels_details_screen.dart';
import '../ui/hero_reels_details_screen.dart';
import '../ui/new_reels_grid_view.dart';
import '../ui/reels_row.dart';

part 'reels_cubit.freezed.dart';

part 'reels_state.dart';

@injectable
class ReelsCubit extends Cubit<ReelsState> {
  // bloc, all logic
  ReelsCubit(
    this._getReelsUseCase,
  ) : super(const ReelsState());

  final GetReelsUseCase _getReelsUseCase;

   List<List<PaginatedReels?>> gridMatrix = [];
   List<List<List<ReelsRowType>?>> reelsRowMatrix = [];
  int pageCount = 1;
  int currentColumnIndex = 1;
  int currentRowIndex = 1;

  void loadReels({bool showShimmer = true}) async {
    /*if (state.status.isLoading) {
      return;
    }*/

    if (showShimmer) {
      emit(state.copyWith(status: const BaseStatus.loading()));
    }

    await _loadMatrix().then((value) => emit(state.copyWith(
        status: const BaseStatus.success(),
        currentPage:
            gridMatrix[currentRowIndex]![currentColumnIndex]!.currentPage,
        total: gridMatrix[currentRowIndex]![currentColumnIndex]!.total,
        currentColumnIndex: currentColumnIndex,
        currentRowIndex: currentRowIndex,
        matrix: gridMatrix,
        reelsRowMatrix: reelsRowMatrix)));
  }

  void swipeTracking(
      {bool? top,
      bool? bottom,
      bool? right,
      bool? left,
      bool? topRight,
      bool? topLeft,
      bool? bottomRight,
      bool? bottomLeft,
      int? rowIndex,
      int? columnIndex}) async {
    if (top == true) currentRowIndex--;
    if (bottom == true) currentRowIndex++;
    if (right == true) currentColumnIndex++;
    if (left == true) currentColumnIndex--;
    if (topRight == true) {
      currentRowIndex--;
      currentColumnIndex++;
    }
    if (topLeft == true) {
      currentRowIndex--;
      currentColumnIndex--;
    }
    if (bottomRight == true) {
      currentRowIndex++;
      currentColumnIndex++;
    }
    if (bottomLeft == true) {
      currentRowIndex++;
      currentColumnIndex--;
    }
    if (rowIndex != null && columnIndex != null) {
      currentRowIndex = rowIndex;
      currentColumnIndex = columnIndex;
    }

    final row = currentRowIndex;
    final column = currentColumnIndex;

    await _addElementsWithMargins<PaginatedReels>(
        row, column, gridMatrix, false);

    await _addElementsWithMargins<List<ReelsRowType>>(
        row, column, reelsRowMatrix, true, item: () {
      return _generateReelsRowsTypes();
    });
    emit(state.copyWith(
        status: const BaseStatus.success(),
        reelsList: gridMatrix[currentRowIndex]![currentColumnIndex]!.reelsList,
        currentPage:
            gridMatrix[currentRowIndex]![currentColumnIndex]!.currentPage,
        currentColumnIndex: currentColumnIndex,
        currentRowIndex: currentRowIndex,
        matrix: gridMatrix,
        reelsRowMatrix: reelsRowMatrix));
  }

  Future _addElementsWithMargins<T>(
      int row, int column, List<List<T?>> matrix, bool needUpdateIndexes,
      {T Function()? item}) async {
    // Проверяем, достигли ли мы границы матрицы

    if (row == 0 ||
        row == matrix.length - 1 ||
        column == 0 ||
        column == matrix[0]!.length - 1) {
      // Создаем новую матрицу с увеличенными размерами
      var newMatrix = matrix;
      // Добавляем элементы по бокам выбранного элемента
      for (var i = 0; i < matrix.length; i++) {
        if (column == 0) {
          newMatrix[i]!.insert(column, null);
        }
        if (column == matrix.length - 1) {
          newMatrix[i]!.add(null);
        }
      }

      // Добавляем элементы сверху и снизу выбранного элемента
      final list = List<T?>.generate(newMatrix[row]!.length, (index) {
        return null;
      });
      if (row == 0) {
        newMatrix.insert(0, list);
      }
      if (row == newMatrix.length - 1) {
        newMatrix.add(list);
      }

      // Обновляем значения текущей строки и текущей колонки
      if (needUpdateIndexes) {
        if (row == 0) currentRowIndex++;
        if (column == 0) currentColumnIndex++;
      }

      await _replaceSurroundingNulls<T>(row, column, newMatrix, item);

      // Обновляем матрицу
      matrix = newMatrix;
    } else {
      await _replaceSurroundingNulls<T>(row, column, matrix, item);
    }
    print(matrix);
  }

  Future _replaceSurroundingNulls<T>(
      int row, int column, List<List<T?>?> matrix, T Function()? item) async {
    // Замещаем Null элементы вокруг указанных индексов значением 4

    // Определяем границы подматрицы 3x3
    var startRow = row - 1;
    var endRow = row + 1;
    var startColumn = column - 1;
    var endColumn = column + 1;
    if (startRow < 0) startRow = 0;
    if (endRow > matrix.length) endRow = matrix.length;
    if (startColumn < 0) startColumn = 0;
    if (endColumn > matrix[row]!.length) endColumn = matrix[row]!.length;
    for (var i = startRow; i <= endRow; i++) {
      for (var j = startColumn; j <= endColumn; j++) {
        if (matrix[i]![j] == null) {
          T? _item;
          if (item == null) {
            _item = (await _getPaginatedReels()) as T?;
          }
          if (item != null) {
            _item = item!();
          }
          matrix[i]![j] = _item!;
        }
      }
    }
  }

  Future<PaginatedReels> _getPaginatedReels() async {
    final reels = await _getReelsUseCase.call(input: pageCount);
    pageCount++;
    return reels;
  }

  Future _loadMatrix() async {
    for (var i = 0; i < 3; i++) {
      gridMatrix.add([]);
      reelsRowMatrix.add([]);
      for (var j = 0; j < 3; j++) {
        try {
          gridMatrix[i]!.add(await _getPaginatedReels());
          reelsRowMatrix[i]!.add(_generateReelsRowsTypes());
        } catch (_ ){
            emit(
              state.copyWith(
                status: BaseStatus.failure(ResponseError.from(_)),
              ));

      }
    }
  }
            }

  List<ReelsRowType> _generateReelsRowsTypes() {
    final list = <ReelsRowType>[
      ReelsRowType.Blue,
      ReelsRowType.Green,
      ReelsRowType.Red
    ];
    list.shuffle();
    return list;
  }

  void loadMoreReels() {
    if (state.status.isLazyLoading) {
      return;
    }

    final nextPage = state.nextPage;

    if (state.hasMoreContents) {
      emit(state.copyWith(status: const BaseStatus.lazyLoading()));

      _getReelsUseCase(input: nextPage).then(
        (paginatedReels) {
          final previousReels = state.reelsList;
          final newReels = paginatedReels.reelsList;
          emit(
            state.copyWith(
              status: const BaseStatus.success(),
              reelsList:
                  gridMatrix[currentRowIndex]![currentColumnIndex]!.reelsList,
              currentPage: paginatedReels.currentPage,
            ),
          );
        },
      ).onError(
        (error, _) {
          emit(
            state.copyWith(
              status: BaseStatus.failure(ResponseError.from(error!)),
            ),
          );
        },
      );
    }
  }

  void update(Article? art, BuildContext context, {String? heroTag}) {
    if (art != null) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => HeroReelsDetailsScreen(
                    art,
                    listReels: gridMatrix[currentRowIndex]![currentColumnIndex]!
                        .reelsList,
                    tag: heroTag ?? '',
                  )));
    }
  }
}

import 'dart:math';
import 'dart:ui';

import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/domain/usecases/reels/get_reels_usecase.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../domain/entities/paginated_list/paginated_reels.dart';
import '../ui/new_reels_grid_view.dart';
import '../ui/reels_row.dart';

part 'reels_cubit.freezed.dart';
part 'reels_state.dart';

@injectable
class ReelsCubit extends Cubit<ReelsState> { // bloc, all logic
  ReelsCubit(
    this._getReelsUseCase,
  ) : super(const ReelsState());

  final GetReelsUseCase _getReelsUseCase;

  final List<List<NewReelsGridView?>> gridMatrix = [[]];
  int pageCount = 1;
  int? currentColumnIndex;
  int? currentRowIndex;
  NewReelsGridView? currentReelsGridView;

  void loadReels({bool showShimmer = true}) async {
    if (state.status.isLoading) {
      return;
    }

    if (showShimmer) {
      emit(state.copyWith(status: const BaseStatus.loading()));
    }
    await _getReels(pageCount,then: (paginatedReels) async {
      gridMatrix[1][1] = NewReelsGridView(reelsList: paginatedReels.reelsList, reelsRowType: _generateReelsRowsTypes(),);
      currentReelsGridView = gridMatrix[1][1];
      state.copyWith(
        status: const BaseStatus.success(),
        reelsList: paginatedReels.reelsList,
        currentPage: paginatedReels.currentPage,
        total: paginatedReels.total,
      );
      pageCount++;
    });
    for(int i = 0; i < 3; i++){
      for(int j = 0; j < 3; j++){
        if(i != 1 && j != 1) {
          await _getReels(pageCount,then: (paginatedReels) async {
          pageCount++;
        });
        }
      }
    }



  }

  Future _getReels (int input, {Function(PaginatedReels)? then}) async {
    await _getReelsUseCase(input: input)
        .then(
            (paginatedReels) => then
    )
        .onError(
          (error, error2) {
        print(error2);
        emit(
          state.copyWith(
            status: BaseStatus.failure(ResponseError.from(error!)),
          ),
        );
      },
    );
  }

  List<ReelsRowType> _generateReelsRowsTypes () {
    final list = <ReelsRowType>[];

    while(list.length < 3){
      final randomNumber = Random().nextInt(2);
      ReelsRowType? type;
      switch (randomNumber) {
        case 1:
          type = ReelsRowType.Blue;
          break;
        case 2:
          type = ReelsRowType.Green;
          break;
        default:
          type = ReelsRowType.Red;
          break;

      }
      if(!list.contains(type)){
        list.add(type);
      }
    }
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

          final newReelsList = [...previousReels, ...newReels];

          emit(
            state.copyWith(
              status: const BaseStatus.success(),
              reelsList: newReelsList,
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

  void update(Article? art) {
    emit(
      state.copyWith(
        selectedArticle: art,
      ),
    );
  }
}

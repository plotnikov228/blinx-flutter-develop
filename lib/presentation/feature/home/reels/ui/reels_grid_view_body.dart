import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:blinx/presentation/feature/home/cubit/home_ab_cubit.dart';
import 'package:blinx/presentation/feature/home/reels/cubit/reels_cubit.dart';
import 'package:blinx/presentation/feature/home/reels/ui/reels_grid_view.dart';
import 'package:blinx/presentation/feature/home/reels/ui/reels_row.dart';
import 'package:blinx/presentation/feature/home/reels_details/reels_details_screen.dart';
import 'package:blinx/presentation/widgets/app_pagination_wrapper.dart';
import 'package:blinx/presentation/widgets/snackbar/app_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

import '../../../../../domain/entities/paginated_list/paginated_reels.dart';
import '../../../../../injection/injector.dart';
import 'new_reels_grid_view.dart';
import 'omnidirectional_page_view/omnidirectional_page_view.dart';

class ReelsGridViewBody extends StatelessWidget {
  const ReelsGridViewBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ReelsCubit, ReelsState>(
        listenWhen: (previous, current) => current.status.isFailure,
        listener: (context, state) {
          state.status.whenOrNull(
            failure: (error) => AppSnackBar.showErrorMessage(
              context,
              title: error.getErrorMessage(context),
            ),
          );
        },
        builder: (context, state) {
          final cubit = context.read<ReelsCubit>();

          final widgetMatrix =
              _getWidgetMatrix(state.matrix, (i, j) {
            var _i = i;
            if (state.reelsRowMatrix.length <= i) {
              _i = state.reelsRowMatrix.length - 1;
            }

            try {
              return state.matrix.isEmpty
                  ? NewReelsGridView.showShimmer()
                  : NewReelsGridView(
                reelsList: state.matrix[_i]![j]?.reelsList,
                reelsRowType: (state.reelsRowMatrix[_i]!)[j],
                previewPlay: i == state.currentRowIndex && j == state.currentColumnIndex, vpController: state.vpControllerMatrix[i]![j],
              );
            } catch (_) {
              return NewReelsGridView.showShimmer();
            }
          });
          if (state.status.isLoading) {
            return NewReelsGridView.showShimmer();
          }
          final size = MediaQuery.of(context).size;
          return OmnidirectionalPageView(
            widgetMatrix: widgetMatrix,
            rowIndex: state.currentRowIndex,
            columnIndex: state.currentColumnIndex,
            onSwipe: (int row, int column) {
              cubit.swipeTracking(rowIndex: row, columnIndex: column);
            }, size: size, vpControllerMatrix: state.vpControllerMatrix,
          );
        }
        //},
        );
  }

  List<List<Widget>> _getWidgetMatrix(
      List<List<dynamic>?> matrix, Widget Function(int, int) item) {
    final widgetMatrix = <List<Widget>>[];

    for (var i = 0; i < matrix.length; i++) {
      widgetMatrix.add([]);
      for (var j = 0; j < matrix[i]!.length; j++) {
        widgetMatrix[i].add(item(i, j));
      }
    }
    return widgetMatrix;
  }



}

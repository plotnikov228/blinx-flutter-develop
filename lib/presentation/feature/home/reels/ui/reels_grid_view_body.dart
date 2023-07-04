import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:blinx/presentation/feature/home/cubit/home_ab_cubit.dart';
import 'package:blinx/presentation/feature/home/reels/cubit/reels_cubit.dart';
import 'package:blinx/presentation/feature/home/reels/ui/reels_grid_view.dart';
import 'package:blinx/presentation/feature/home/reels_details/reels_details_screen.dart';
import 'package:blinx/presentation/widgets/app_pagination_wrapper.dart';
import 'package:blinx/presentation/widgets/snackbar/app_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        final reelsList = state.reelsList; // видео

        if (state.selectedArticle != null) { // как то сюда внедрить анимацию приближения видео
          context.read<HomeAbCubit>().update(false);
          return ReelsDetailsScreen(
            reelsList,
            selectedArticle: state.selectedArticle!,
            doPop: false,
          );
        } else {
          if (state.shouldShowShimmer) {
            return ReelsGridView.showShimmer();
          }
          return AppPaginationWrapper(
            isRefreshIndicatorEnabled: false,
            onRefresh: () async {
              context.read<ReelsCubit>().loadReels(showShimmer: true);
            },
            showPaginationLoader: state.status.isLazyLoading,
            onLoadMore: context.read<ReelsCubit>().loadMoreReels,
            child: ReelsGridView(
              reelsList: reelsList,
            ),
          );
        }
      },
    );
  }
}

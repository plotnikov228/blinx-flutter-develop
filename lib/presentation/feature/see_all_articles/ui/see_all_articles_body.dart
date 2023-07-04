import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:blinx/presentation/feature/see_all_articles/cubit/see_all_articles_cubit.dart';
import 'package:blinx/presentation/feature/see_all_articles/ui/see_all_articles_list.dart';
import 'package:blinx/presentation/feature/see_all_articles/ui/see_all_articles_shimmer.dart';
import 'package:blinx/presentation/widgets/app_pagination_wrapper.dart';
import 'package:blinx/presentation/widgets/snackbar/app_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeeAllArticlesBody extends StatelessWidget {
  const SeeAllArticlesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SeeAllArticlesCubit, SeeAllArticlesState>(
      listenWhen: (_, current) => current.status.isFailure,
      listener: (context, state) {
        state.status.whenOrNull(
          failure: (error) => AppSnackBar.showErrorMessage(
            context,
            title: ResponseError.from(error).getErrorMessage(context),
          ),
        );
      },
      builder: (context, state) {
        if (state.shouldShowShimmer) {
          return const SeeAllArticleShimmer();
        }

        return AppPaginationWrapper(
          showPaginationLoader: state.status.isLazyLoading,
          onLoadMore: context.read<SeeAllArticlesCubit>().loadMoreArticles,
          child: const SeeAllArticlesList(),
        );
      },
    );
  }
}

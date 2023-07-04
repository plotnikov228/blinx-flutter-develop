import 'package:auto_route/auto_route.dart';
import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/domain/entities/category.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:blinx/presentation/feature/home/category_details/widgets/horizontal_categories_list.dart';
import 'package:blinx/presentation/feature/home/you/you_page_logged_in/articles_by_category_page/ui/articles_staggered_grid_view.dart';
import 'package:blinx/presentation/feature/home/you/you_page_logged_in/articles_by_category_page/ui/articles_staggered_shimmer.dart';
import 'package:blinx/presentation/feature/home/you/you_page_logged_in/cubit/articles_by_categories_cubit.dart';
import 'package:blinx/presentation/feature/home/you/you_page_logged_in/cubit/liked_categories_cubit.dart';
import 'package:blinx/presentation/feature/home/you/you_page_logged_in/you_page_logged_in.dart';
import 'package:blinx/presentation/feature/moments/cubit/moments_cubit.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:blinx/presentation/widgets/app_refresh_indicator.dart';
import 'package:blinx/presentation/widgets/shimmer_box.dart';
import 'package:blinx/presentation/widgets/snackbar/app_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scroll_app_bar/scroll_app_bar.dart';

class ArticlesByCategoriesBody extends StatelessWidget {
  const ArticlesByCategoriesBody({super.key});

  void _onArticleTap(BuildContext context, Article article) =>
      context.router.push(ArticleScreenRoute(article: article));

  @override
  Widget build(BuildContext context) {
    final youPageState =
        context.findRootAncestorStateOfType<YouPageLoggedInState>()!;
    final heightNotifier = youPageState.scrollController.appBar.heightNotifier;

    return AppRefreshIndicator(
      onRefresh: () async {
        context.read<MomentsCubit>().loadMoments(showShimmer: false);
        context
            .read<LikedCategoriesCubit>()
            .loadLikedCategories(showShimmer: false);
        context
            .read<ArticlesByCategoriesCubit>()
            .getArticlesByCategory(showShimmer: false);
      },
      child: Stack(
        children: [
          Positioned.fill(
            child: AnimatedBuilder(
                animation: heightNotifier,
                builder: (context, child) {
                  return BlocBuilder<LikedCategoriesCubit,
                      LikedCategoriesState>(
                    builder: (context, state) {
                      return Padding(
                        padding: state.needSpaceForCategories
                            ? EdgeInsets.only(
                                top: 72 - (36 * (1 - heightNotifier.value)),
                              )
                            : const EdgeInsets.only(top: 24),
                        child: child,
                      );
                    },
                  );
                },
                child: BlocConsumer<ArticlesByCategoriesCubit,
                    ArticlesByCategoriesState>(
                  listenWhen: (_, current) => current.status.isFailure,
                  listener: (context, state) {
                    state.status.whenOrNull(
                      failure: ((error) => AppSnackBar.showErrorMessage(
                            context,
                            title: ResponseError.from(error)
                                .getErrorMessage(context),
                          )),
                    );
                  },
                  builder: (context, state) {
                    if (!state.status.isSuccess) {
                      return const ArticlesStaggeredShimmer();
                    }

                    if (state.articlesList.isEmpty) {
                      return const SizedBox.shrink();
                    }

                    return ArticlesStaggeredGridView(
                      articles: state.articlesList,
                      scrollController: youPageState.scrollController,
                      onItemSelected: (v) => _onArticleTap(context, v),
                    );
                  },
                )),
          ),
          BlocBuilder<LikedCategoriesCubit, LikedCategoriesState>(
            builder: (context, state) {
              if (!state.needSpaceForCategories) {
                return const SizedBox.shrink();
              }
              return Positioned(
                top: 22,
                right: 0,
                left: 0,
                height: 124,
                child: AnimatedBuilder(
                  animation: heightNotifier,
                  builder: (context, child) {
                    final opacity = (1 - (heightNotifier.value));
                    return Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: const [.04, .5, 1.0],
                          colors: [
                            Colors.black.withOpacity(opacity),
                            Colors.transparent,
                            Colors.transparent,
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
          Positioned(
            top: 22,
            left: 0,
            right: 0,
            child: BlocConsumer<LikedCategoriesCubit, LikedCategoriesState>(
              listenWhen: (_, current) => current.status.isFailure,
              listener: (context, state) {
                state.status.whenOrNull(
                  failure: ((error) => AppSnackBar.showErrorMessage(
                        context,
                        title:
                            ResponseError.from(error).getErrorMessage(context),
                      )),
                );
              },
              builder: (context, state) {
                if (!state.status.isSuccess) {
                  return Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: ShimmerBox(
                          width: 44,
                          height: 28,
                          child: Chip(label: SizedBox(width: 44)),
                        ),
                      ),
                    ],
                  );
                }

                if (!state.needSpaceForCategories) {
                  return const SizedBox.shrink();
                }

                return HorizontalCategoriesList(
                  categories: state.likedCategoriesList,
                  selectedCategory: state.selectedCategory ?? Category.all(),
                  scrollController: youPageState.scrollController,
                  onCategorySelected: (category) {
                    context
                        .read<LikedCategoriesCubit>()
                        .setSelectedCategory(category);

                    context
                        .read<ArticlesByCategoriesCubit>()
                        .getArticlesByCategory(categoryName: category.name);
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/feature/explore/cubit/explore_search_cubit.dart';
import 'package:blinx/presentation/feature/explore/widgets/horizontal_serach_category_list.dart';
import 'package:blinx/presentation/feature/explore/widgets/search_bottom_sheet.dart';
import 'package:blinx/presentation/feature/explore/widgets/search_result_all_articles_section.dart';
import 'package:blinx/presentation/feature/explore/widgets/search_result_empty_states.dart';
import 'package:blinx/presentation/feature/explore/widgets/search_result_reels_section.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:blinx/presentation/widgets/bottom_sheet/app_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResult extends StatelessWidget {
  const SearchResult(this.parentContext, {super.key});

  final BuildContext parentContext;

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.explore;
    return Scaffold(
      body: SingleChildScrollView(
        child: BlocBuilder<ExploreSearchCubit, ExploreSearchState>(
          bloc: BlocProvider.of(parentContext),
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                HorizontalSearchCategoryList(parentContext),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16, 26, 16, 0),
                  child: AppText.body300(
                    '${state.searchResultsTotal} ${i18n.searchResult} "${state.searchQuery}"',
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 12),
                state.paginatedArticles!.articlesList.isEmpty
                    ? SearchResultEmptyStates(searchTerm: state.searchQuery)
                    : Column(
                        children: [
                          SearchResultReelsSection(
                            reels: state.reelsList,
                            onLoadMore: parentContext
                                .read<ExploreSearchCubit>()
                                .loadMoreSearchResults,
                          ),
                          const SizedBox(height: 12),
                          SearchResultAllArticlesSection(
                            articles: state.allArticlesList
                                .where((element) =>
                                    element.articleType == "article")
                                .toList(),
                            onLoadMore: parentContext
                                .read<ExploreSearchCubit>()
                                .loadMoreSearchResults,
                          ),
                          const SizedBox(height: 100),
                        ],
                      ),
              ],
            );
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        height: 35,
        width: 125,
        child: FloatingActionButton(
          backgroundColor: context.colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          onPressed: () => AppBottomSheet.showSheet(
            context,
            child: SearchBottomSheet(parentContext),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Assets.icons.sort.svg(
                color: context.colors.white,
              ),
              const SizedBox(width: 7),
              AppText.body500(
                context.localization.explore.sortBy,
                fontSize: 14,
                color: context.colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

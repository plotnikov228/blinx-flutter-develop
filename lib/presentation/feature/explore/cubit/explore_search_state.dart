part of 'explore_search_cubit.dart';

@freezed
class ExploreSearchState with _$ExploreSearchState {
  const ExploreSearchState._();

  const factory ExploreSearchState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default('') String searchQuery,
    @Default(SortBy.newestToOldest) SortBy sortByType,
    String? categories,
    PaginatedArticles? paginatedArticles,
  }) = _ExploreSearchState;

  List<Article> get reelsList {
    if (paginatedArticles == null) {
      return List.empty();
    }

    return paginatedArticles!.articlesList
        .where((element) => element.isReels)
        .toList();
  }

  List<Article> get allArticlesList {
    if (paginatedArticles == null) {
      return List.empty();
    }

    return paginatedArticles!.articlesList
        .where((element) => !element.isReels)
        .toList();
  }

  int get searchResultsTotal => paginatedArticles?.total ?? 0;

  bool get isListEmpty => paginatedArticles?.articlesList.isEmpty ?? true;

  bool get shouldShowShimmer => !status.isSuccess && !status.isLazyLoading;

  bool get hasEmptyState => isListEmpty && categories == null;

  int get nextPage => (paginatedArticles?.currentPage ?? 1) + 1;

  int get lastPage => ((paginatedArticles?.total ?? 0) / 20).ceil();

  bool get hasMoreContents => nextPage <= lastPage;
}

enum SortBy {
  newestToOldest,
  oldestToNewest,
  mostPopular,
  relevance,
}

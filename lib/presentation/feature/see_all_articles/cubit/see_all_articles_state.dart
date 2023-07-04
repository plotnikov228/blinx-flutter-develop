part of 'see_all_articles_cubit.dart';

@freezed
class SeeAllArticlesState with _$SeeAllArticlesState {
  const SeeAllArticlesState._();

  const factory SeeAllArticlesState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default(PaginatedArticles()) PaginatedArticles paginatedArticles,
  }) = _SeeAllArticlesState;

  bool get isListEmpty => paginatedArticles.articlesList.isEmpty;

  bool get shouldShowShimmer => !status.isSuccess && !status.isLazyLoading;

  int get nextPage => paginatedArticles.currentPage + 1;

  int get lastPage => (paginatedArticles.total / 20).ceil();

  bool get hasMoreContents => nextPage <= lastPage;
}

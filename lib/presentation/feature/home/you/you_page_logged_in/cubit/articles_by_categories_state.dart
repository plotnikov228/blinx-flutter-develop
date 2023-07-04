part of 'articles_by_categories_cubit.dart';

@freezed
class ArticlesByCategoriesState with _$ArticlesByCategoriesState {
  const factory ArticlesByCategoriesState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default([]) List<Article> articlesList,
  }) = _ArticlesByCategoriesState;
}

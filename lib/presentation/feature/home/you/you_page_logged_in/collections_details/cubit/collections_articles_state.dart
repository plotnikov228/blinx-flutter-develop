part of 'collections_articles_cubit.dart';

@freezed
class CollectionsArticlesState with _$CollectionsArticlesState {
  const factory CollectionsArticlesState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default([]) List<Article> articlesList,
  }) = _CollectionsArticlesState;
}

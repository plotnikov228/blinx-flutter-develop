part of 'storytellers_articles_cubit.dart';

@freezed
class StorytellerArticlesState with _$StorytellerArticlesState {
  const factory StorytellerArticlesState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default([]) List<Article> articlesList,
  }) = _StorytellerArticlesState;
}

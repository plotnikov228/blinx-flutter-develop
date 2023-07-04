part of 'like_article_cubit.dart';

@freezed
class LikeArticleState with _$LikeArticleState {
  const LikeArticleState._();

  const factory LikeArticleState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default({}) Map<String, bool> likedItems,
  }) = _LikeArticleState;

  bool isLikedByUser(String id) => likedItems.containsKey(id);
}

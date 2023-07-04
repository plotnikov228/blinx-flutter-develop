import 'package:blinx/domain/entities/storyteller.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_like_state.freezed.dart';

@freezed
class ArticlLikeState with _$ArticlLikeState {
  const ArticlLikeState._();

  const factory ArticlLikeState({
    @Default(false) bool isLiked,
    @Default(0) int totalLikes,
    Storyteller? storytellers,
  }) = _ArticlLikeStateState;
}

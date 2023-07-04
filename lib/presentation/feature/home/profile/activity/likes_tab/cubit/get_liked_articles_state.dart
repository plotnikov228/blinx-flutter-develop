import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_liked_articles_state.freezed.dart';

@freezed
class GetLikedArticlesState with _$GetLikedArticlesState {
  const GetLikedArticlesState._();

  factory GetLikedArticlesState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default([]) List<Article> articlesList,
  }) = _GetLikedArticlesState;
}

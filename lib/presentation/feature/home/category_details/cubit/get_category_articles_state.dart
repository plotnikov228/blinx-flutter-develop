import 'package:blinx/domain/entities/paginated_list/paginated_articles.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_category_articles_state.freezed.dart';

@freezed
class GetCategoryArticlesState with _$GetCategoryArticlesState {
  const GetCategoryArticlesState._();

  factory GetCategoryArticlesState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default(PaginatedArticles()) PaginatedArticles paginatedArticles,
  }) = _GetCategoryArticlesState;
}

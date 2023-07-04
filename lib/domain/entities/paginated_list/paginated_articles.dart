import 'package:blinx/domain/entities/article.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_articles.freezed.dart';
part 'paginated_articles.g.dart';

@freezed
class PaginatedArticles with _$PaginatedArticles {
  const factory PaginatedArticles({
    @Default([]) List<Article> articlesList,
    @Default(1) int currentPage,
    @Default(0) int total,
  }) = _PaginatedArticles;

  factory PaginatedArticles.fromJson(Map<String, dynamic> json) =>
      _$PaginatedArticlesFromJson(json);
}

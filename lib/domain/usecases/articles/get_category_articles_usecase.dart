import 'package:blinx/domain/entities/paginated_list/paginated_articles.dart';
import 'package:blinx/domain/repostories/articles_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCategoryArticlesUseCase {
  GetCategoryArticlesUseCase(this._articlesRepository);
  final ArticlesRepository _articlesRepository;

  Future<PaginatedArticles> call(String categoryName, {int input = 1}) async {
    final articlesResponse = await _articlesRepository.getCategoryArticles(categoryName, input);

    final paginatedArticles = PaginatedArticles(
      articlesList: articlesResponse.results,
      currentPage: articlesResponse.offset,
      total: articlesResponse.total,
    );
    return paginatedArticles;
  }
}

@injectable
class GetNowCategoryArticlesUseCase {
  GetNowCategoryArticlesUseCase(this._articlesRepository);
  final ArticlesRepository _articlesRepository;

  Future<PaginatedArticles> call(String categoryName, {int input = 1}) async {
    final articlesResponse = await _articlesRepository.getNowEditorChoice(categoryName);

    final paginatedArticles = PaginatedArticles(
      articlesList: articlesResponse.results,
      currentPage: articlesResponse.offset,
      total: articlesResponse.total,
    );
    return paginatedArticles;
  }
}
@injectable
class GetLifeCategoryArticlesUseCase {
  GetLifeCategoryArticlesUseCase(this._articlesRepository);
  final ArticlesRepository _articlesRepository;

  Future<PaginatedArticles> call(String categoryName, {int input = 1}) async {
    final articlesResponse = await _articlesRepository.getLifeEditorChoice(categoryName);

    final paginatedArticles = PaginatedArticles(
      articlesList: articlesResponse.results,
      currentPage: articlesResponse.offset,
      total: articlesResponse.total,
    );
    return paginatedArticles;
  }
}

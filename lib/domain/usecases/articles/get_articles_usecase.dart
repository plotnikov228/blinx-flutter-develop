import 'package:blinx/domain/entities/paginated_list/paginated_articles.dart';
import 'package:blinx/domain/repostories/articles_repository.dart';
import 'package:blinx/domain/usecases/use_case.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetArticlesUseCase extends FutureOutputUseCase<PaginatedArticles> {
  final ArticlesRepository _articlesRepository;

  GetArticlesUseCase(this._articlesRepository);
  @override
  Future<PaginatedArticles> call({int input = 1}) async {
    final articlesResponse = await _articlesRepository.getArticles(input);

    final paginatedArticles = PaginatedArticles(
      articlesList: articlesResponse.results,
      currentPage: articlesResponse.offset,
      total: articlesResponse.total,
    );

    return paginatedArticles;
  }
}

import 'package:blinx/domain/entities/paginated_list/paginated_articles.dart';
import 'package:blinx/domain/repostories/articles_repository.dart';
import 'package:blinx/domain/usecases/use_case.dart';
import 'package:injectable/injectable.dart';

@injectable
class SearchArticlesUseCase
    extends FutureUseCase<SearchArticlesInput, PaginatedArticles> {
  SearchArticlesUseCase(this._articlesRepository);

  final ArticlesRepository _articlesRepository;

  @override
  Future<PaginatedArticles> call(SearchArticlesInput input) =>
      _articlesRepository.searchArticles(
        page: input.page,
        query: input.query,
        categories: input.categories,
      );
}

class SearchArticlesInput {
  SearchArticlesInput({this.page = 1, required this.query, this.categories});

  final int page;
  final String query;
  final String? categories;
}

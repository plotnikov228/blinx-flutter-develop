import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/domain/repostories/articles_repository.dart';
import 'package:blinx/domain/usecases/use_case.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCollectionsArticlesUseCase extends FutureUseCase<int, List<Article>> {
  final ArticlesRepository _articlesRepository;

  GetCollectionsArticlesUseCase(this._articlesRepository);

  @override
  Future<List<Article>> call(int input) =>
      _articlesRepository.getCollectionArticles(input);
}

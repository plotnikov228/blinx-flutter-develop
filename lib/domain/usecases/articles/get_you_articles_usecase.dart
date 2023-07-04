import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/domain/repostories/articles_repository.dart';
import 'package:blinx/domain/usecases/use_case.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetYouArticlesUseCase extends FutureUseCase<String, List<Article>> {
  final ArticlesRepository _articlesRepository;

  GetYouArticlesUseCase(this._articlesRepository);

  @override
  Future<List<Article>> call(String input) =>
      _articlesRepository.getYouArticles(input);
}

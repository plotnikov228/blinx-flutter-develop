import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/domain/repostories/articles_repository.dart';
import 'package:blinx/domain/usecases/use_case.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetStorytellersArticlesUseCase
    extends FutureUseCase<String, List<Article>> {
  final ArticlesRepository _articlesRepository;

  GetStorytellersArticlesUseCase(this._articlesRepository);

  @override
  Future<List<Article>> call(String input) =>
      _articlesRepository.getStorytellerArticles(input);
}

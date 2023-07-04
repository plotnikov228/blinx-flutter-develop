import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/domain/repostories/articles_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetLikedArticlesUseCase {
  GetLikedArticlesUseCase(this._articlesRepository);
  final ArticlesRepository _articlesRepository;

  Future<List<Article>> call() => _articlesRepository.getLikedArticles();
}

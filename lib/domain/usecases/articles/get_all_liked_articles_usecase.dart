import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/domain/repostories/articles_repository.dart';
import 'package:blinx/domain/usecases/use_case.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAllLikedArticlesUseCase extends FutureOutputUseCase<List<Article>> {
  final ArticlesRepository _articlesRepository;

  GetAllLikedArticlesUseCase(this._articlesRepository);

  @override
  Future<List<Article>> call() => _articlesRepository.getAllLikedArticles();
}

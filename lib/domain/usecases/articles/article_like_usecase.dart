import 'package:blinx/domain/repostories/articles_repository.dart';
import 'package:injectable/injectable.dart';

import '../../entities/article.dart';

@injectable
class ArticleLikeUsecase {
  ArticleLikeUsecase(this._articlesRepository);
  final ArticlesRepository _articlesRepository;

  Future<Article> call(articlePath) async {
    return _articlesRepository.getArticleLike(articlePath);
  }
}

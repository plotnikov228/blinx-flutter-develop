import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/domain/preferences/auth_preferences.dart';
import 'package:blinx/domain/repostories/articles_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class UnlikeArticleUsecase {
  UnlikeArticleUsecase(this._articlesRepository, this._authPreferences);

  final AuthPreferences _authPreferences;
  final ArticlesRepository _articlesRepository;

  Future<Article> call(Article article) async {
    if (!_authPreferences.isLoggedIn()) {
      throw const ResponseError.invalidLoginCredentials();
    }
    return _articlesRepository.unlikeArticle(article.path);
  }
}

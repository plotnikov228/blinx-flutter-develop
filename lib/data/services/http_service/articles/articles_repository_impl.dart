import 'package:blinx/data/services/http_service/articles/data_source/remote/articles_remote_data_source.dart';
import 'package:blinx/data/services/request_objects/comment/add_comment.dart';
import 'package:blinx/data/services/request_objects/comment/reply_comment.dart';
import 'package:blinx/data/services/request_objects/comment/report_comment.dart';
import 'package:blinx/data/services/response_objects/articles/articles_response.dart';
import 'package:blinx/data/services/response_objects/articles/comments/comments_response.dart';
import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/domain/entities/paginated_list/paginated_articles.dart';
import 'package:blinx/domain/repostories/articles_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ArticlesRepository)
class ArticlesRepositoryImpl extends ArticlesRepository {
  ArticlesRepositoryImpl(this._articlesRemoteDataSource);

  final ArticlesRemoteDataSource _articlesRemoteDataSource;

  @override
  Future<ArticlesResponse> getArticles(int page) =>
      _articlesRemoteDataSource.getArticles(page);
  
  @override
  Future<ArticlesResponse> getEditorChoiceByCategory(String categoryName) {
    throw UnimplementedError();
  }

  @override
  Future<ArticlesResponse> getNowEditorChoice(String categoryName) {
    return _articlesRemoteDataSource.getNowEditorChoice(int.parse(categoryName));
  }

  @override
  Future<ArticlesResponse> getLifeEditorChoice(String categoryName) {
    // TODO: implement getLifeEditorChoice
    throw UnimplementedError();
  }

  
  

  @override
  Future<List<Article>> getYouArticles(String categoryName) async {
    final youArticlesResponse =
        await _articlesRemoteDataSource.getYouArticlesByCategory(categoryName);

    return youArticlesResponse;
  }

  @override
  Future<Article> likeArticle(String articlePath) {
    return _articlesRemoteDataSource.likeArticle(articlePath);
  }

  @override
  Future<Article> unlikeArticle(String articlePath) {
    return _articlesRemoteDataSource.unlikeArticle(articlePath);
  }

  @override
  Future<List<CommentsResponse>> getAllComments(String articleId) {
    return _articlesRemoteDataSource.getAllComments(articleId);
  }

   
  @override
  Future<CommentsResponse> addComment(String articleId, AddCommentBody content) {
    return _articlesRemoteDataSource.comment(articleId, content);
  }
  
  @override
  Future<CommentsResponse> commentReply(String commentId, ReplyCommentBody body) {
    return _articlesRemoteDataSource.replyComment(commentId, body);
  }
  
  @override
  Future<CommentsResponse> editComment(String commentId, AddCommentBody content) {
    return _articlesRemoteDataSource.editComment(commentId, content);
  }

  @override
  Future<void> deleteComment(String commentId) {
    return _articlesRemoteDataSource.deleteComment(commentId);
  }
  
  @override
  Future<CommentsResponse> likeComment(String commentId) {
    return _articlesRemoteDataSource.likeComment(commentId);
  }
  
  @override
  Future<CommentsResponse> reportComment(String commentId, ReportComment body) {
    return _articlesRemoteDataSource.reportComment(commentId, body);
  }
  
  @override
  Future<CommentsResponse> unLikeComment(String commentId) {
    return _articlesRemoteDataSource.unlikeComment(commentId);
  }

  @override
  Future<List<Article>> getLikedArticles() async {
    final likedArticlesResponse =
        await _articlesRemoteDataSource.getLikedArticles();

    return likedArticlesResponse;
  }

  @override
  Future<List<Article>> getStorytellerArticles(String storytellerPath) async {
    final storytellerArticlesResponse =
        await _articlesRemoteDataSource.getStorytellerArticles(storytellerPath);

    final articlesList = storytellerArticlesResponse.articles
        .map((item) => item)
        .toList();

    return articlesList;
  }

  @override
  Future<List<Article>> getAllLikedArticles() async {
    final likedArticlesResponse =
        await _articlesRemoteDataSource.getAllLikedArticles();

    return likedArticlesResponse;
  }

  @override
  Future<PaginatedArticles> searchArticles({
    required int page,
    required String query,
    String? categories,
  }) async {
    final searchResponse =
        await _articlesRemoteDataSource.searchArticles(page, query, categories);

    final paginatedArticles = PaginatedArticles(
      articlesList: searchResponse.results,
      currentPage: searchResponse.offset,
      total: searchResponse.total,
    );
    return paginatedArticles;
  }

  @override
  Future<ArticlesResponse> getCategoryArticles(String categoryName, int page) =>
      _articlesRemoteDataSource.getCategoryArticles(categoryName, page);

  @override
  Future<List<Article>> getCollectionArticles(int categoryId) async {
    final collectionArticlesResponse =
        await _articlesRemoteDataSource.getCollectionArticles(categoryId);

    final articlesList = collectionArticlesResponse.articles
        .map((item) => item)
        .toList();

    return articlesList;
  }

  @override
  Future<Article> getArticleLike(String articlePath) => _articlesRemoteDataSource.getArticleLike(articlePath);
}

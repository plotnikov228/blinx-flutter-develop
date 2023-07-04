import 'package:blinx/data/services/request_objects/comment/add_comment.dart';
import 'package:blinx/data/services/request_objects/comment/reply_comment.dart';
import 'package:blinx/data/services/request_objects/comment/report_comment.dart';
import 'package:blinx/data/services/response_objects/articles/articles_response.dart';
import 'package:blinx/data/services/response_objects/articles/comments/comments_response.dart';
import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/domain/entities/paginated_list/paginated_articles.dart';

abstract class ArticlesRepository {
  Future<ArticlesResponse> getArticles(int page);

  Future<ArticlesResponse> getEditorChoiceByCategory(String categoryName);

  Future<ArticlesResponse> getNowEditorChoice(String categoryName);

  Future<ArticlesResponse> getLifeEditorChoice(String categoryName);

  Future<List<Article>> getYouArticles(String categoryName);

  Future<List<Article>> getAllLikedArticles();

  Future<Article> likeArticle(String articlePath);

  Future<Article> unlikeArticle(String articlePath);

  // Comments Start
  Future<List<CommentsResponse>> getAllComments(String articleId);
  Future<CommentsResponse> addComment(String articleId, AddCommentBody content);
  Future<CommentsResponse> editComment(String commentId, AddCommentBody content);
  Future<CommentsResponse> likeComment(String commentId);
  Future<CommentsResponse> unLikeComment(String commentId);
  Future<void> deleteComment(String commentId); 
  Future<CommentsResponse> commentReply(String commentId, ReplyCommentBody body);
  Future<CommentsResponse> reportComment(String commentId, ReportComment body);

  // Comments End

  Future<List<Article>> getLikedArticles();

  Future<List<Article>> getStorytellerArticles(String storytellerPath);

  Future<PaginatedArticles> searchArticles({
    required int page,
    required String query,
    String? categories,
  });

  Future<ArticlesResponse> getCategoryArticles(String categoryName, int page);

  Future<List<Article>> getCollectionArticles(int categoryId);

  Future<Article> getArticleLike(String articlePath);
}

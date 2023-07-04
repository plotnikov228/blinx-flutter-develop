import 'package:blinx/data/services/request_objects/comment/add_comment.dart';
import 'package:blinx/data/services/request_objects/comment/reply_comment.dart';
import 'package:blinx/data/services/request_objects/comment/report_comment.dart';
import 'package:blinx/data/services/response_objects/articles/articles_response.dart';
import 'package:blinx/data/services/response_objects/articles/comments/comments_response.dart';
import 'package:blinx/domain/entities/article_wrapper.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../../domain/entities/article.dart';

part 'articles_remote_data_source.g.dart';

@RestApi()
@lazySingleton
abstract class ArticlesRemoteDataSource {
  @factoryMethod
  factory ArticlesRemoteDataSource(Dio dio) = _ArticlesRemoteDataSource;

  @GET('/articles?renditions=original,mobileHero,mobileArticle,mobileArticleSmall,mobileBlinx&page={page}')
  Future<ArticlesResponse> getArticles(@Path() int page);

  @GET('/collections/{categoryId}/articles?renditions=original,mobileHero,mobileArticle,mobileArticleSmall,mobileBlinx&topStory=true&tag=now')
  Future<ArticlesResponse> getNowEditorChoice(@Path() int categoryId);

  @GET('/collections/{categoryId}/articles?renditions=original,mobileHero,mobileArticle,mobileArticleSmall,mobileBlinx&topStory=true&tag=life')
  Future<ArticlesResponse> getLifeEditorChoice(@Path() int categoryId);

  @GET('/collections/{categoryId}/articles?renditions=original,mobileHero,mobileArticle,mobileArticleSmall,mobileBlinx&topStory=true')
  Future<ArticlesResponse> getCategoriesEditorChoice(@Path() int categoryId);

  @GET('/contents/you?renditions=original,mobileHero,mobileArticle,mobileArticleSmall,mobileBlinx')
  Future<List<Article>> getYouArticlesByCategory(
      @Query('categories') String categoryName);

  @GET('/articles/like?renditions=original,mobileHero,mobileArticle,mobileArticleSmall,mobileBlinx')
  Future<List<Article>> getAllLikedArticles();

  @POST('/articles/{articlePath}/like')
  Future<Article> likeArticle(@Path() String articlePath);

  @DELETE('/articles/{articlePath}/like')
  Future<Article> unlikeArticle(@Path() String articlePath);

  @GET('/comments/{articleId}')
  Future<List<CommentsResponse>> getAllComments(@Path() String articleId);
  
  @POST('/comments/{articleId}')
  Future<CommentsResponse> comment(@Path() String articleId, @Body() AddCommentBody content);

  @PUT('/comments/{commentId}')
  Future<CommentsResponse> editComment(@Path() String commentId, @Body() AddCommentBody content);
  
  @POST('/comments/like/{commentId}')
  Future<CommentsResponse> likeComment(@Path() String commentId);
  
  @DELETE('/comments/like/{commentId}')
  Future<CommentsResponse> unlikeComment(@Path() String commentId);
  
  @POST('/comments/{commentId}/reply')
  Future<CommentsResponse> replyComment(@Path() String commentId, @Body() ReplyCommentBody body);
  
  @POST('/comments/{commentId}/report')
  Future<CommentsResponse> reportComment(@Path() String commentId, @Body() ReportComment body);
  
  @DELETE('/comments/{commentId}')
  Future<void> deleteComment(@Path() String commentId);

  @GET('/articles/like?renditions=original,mobileHero,mobileArticle,mobileArticleSmall,mobileBlinx')
  Future<List<Article>> getLikedArticles();

  @GET('/storytellers{storytellerPath}?renditions=original,mobileHero,mobileArticle,mobileArticleSmall,mobileBlinx')
  Future<ArticleWrapper> getStorytellerArticles(@Path() String storytellerPath);

  @GET('/articles?renditions=original,mobileHero,mobileArticle,mobileArticleSmall,mobileBlinx')
  Future<ArticlesResponse> searchArticles(
    @Query('page') int page,
    @Query('q') String query,
    @Query('categories') String? categories,
  );

  @GET('/articles?renditions=original,mobileHero,mobileArticle,mobileArticleSmall,mobileBlinx')
  Future<ArticlesResponse> getCategoryArticles(
      @Query('categories') String categoryName, @Query('page') int page);

  @GET('/collections/{categoryId}/articles?renditions=original,mobileHero,mobileArticle,mobileArticleSmall,mobileBlinx')
  Future<ArticleWrapper> getCollectionArticles(@Path() int categoryId);

  @GET('/articles{articlePath}?fields=title,totalLike,isLiked,storytellers_path,storytellers_avatar,media_primaryImage')
  Future<Article> getArticleLike(@Path() String articlePath);
}

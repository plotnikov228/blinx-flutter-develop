import 'package:blinx/data/services/response_objects/articles/articles_response.dart';
import 'package:blinx/data/services/response_objects/content/content_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../../domain/entities/article.dart';

part 'content_remote_data_source.g.dart';

@RestApi()
@lazySingleton
abstract class ContentRemoteDataSource {
  @factoryMethod
  factory ContentRemoteDataSource(Dio dio) = _ContentRemoteDataSource;


  @GET('/contents/tag/now/isHero?renditions=original,mobileHero,mobileArticle,mobileArticleSmall,mobileBlinx')
  Future<List<Article>> getNowHeroContent();

  @GET('/contents/tag/now/isTrending?renditions=original,mobileHero,mobileArticle,mobileArticleSmall,mobileBlinx')
  Future<List<Article>> getNowTrendingContent();

  @GET('/contents/tag/now/isTopStory?renditions=original,mobileHero,mobileArticle,mobileArticleSmall,mobileBlinx')
  Future<List<Article>> getNowTopStoryContent();

  @GET('/contents/tag/now/blinx?renditions=original,mobileHero,mobileArticle,mobileArticleSmall,mobileBlinx')
  Future<List<Article>> getNowReelsContent();

  @GET('/contents/advertise?renditions=original,mobileHero,mobileArticle,mobileArticleSmall,mobileBlinx')
  Future<List<FAdvertise>> getNowAdvertiseContent();


  @GET('/contents/tag/life/isHero?renditions=original,mobileHero,mobileArticle,mobileArticleSmall,mobileBlinx')
  Future<List<Article>> getLifeHeroContent();

  @GET('/contents/tag/life/isTrending?renditions=original,mobileHero,mobileArticle,mobileArticleSmall,mobileBlinx')
  Future<List<Article>> getLifeTrendingContent();

  @GET('/contents/tag/life/isTopStory?renditions=original,mobileHero,mobileArticle,mobileArticleSmall,mobileBlinx')
  Future<List<Article>> getLifeTopStoryContent();

  @GET('/contents/tag/life/blinx?renditions=original,mobileHero,mobileArticle,mobileArticleSmall,mobileBlinx')
  Future<List<Article>> getLifeReelsContent();

  @GET('/contents/advertise?renditions=original,mobileHero,mobileArticle,mobileArticleSmall,mobileBlinx')
  Future<List<FAdvertise>> getLifeAdvertiseContent();


  @GET('/contents/more/isHero?renditions=original,mobileHero,mobileArticle,mobileArticleSmall,mobileBlinx')
  Future<List<Article>> getMoreHeroContent();

  @GET('/contents/more/isTrending?renditions=original,mobileHero,mobileArticle,mobileArticleSmall,mobileBlinx')
  Future<List<Article>> getMoreTrendingContent();

  @GET('/contents/more/isTopStory?renditions=original,mobileHero,mobileArticle,mobileArticleSmall,mobileBlinx')
  Future<List<Article>> getMoreTopStoryContent();

  @GET('/contents/more/blinx?renditions=original,mobileHero,mobileArticle,mobileArticleSmall,mobileBlinx')
  Future<List<Article>> getMoreReelsContent();

  @GET('/contents/advertise?renditions=original,mobileHero,mobileArticle,mobileArticleSmall,mobileBlinx')
  Future<List<FAdvertise>> getMoreAdvertiseContent();

  @GET('/articles?editorChoice=true&type=article&renditions=original,mobileHero,mobileArticle,mobileArticleSmall,mobileBlinx')
  Future<ArticlesResponse> getEditorsChoice(@Query('tag') String tag,@Query('categories') String categories);
  
}

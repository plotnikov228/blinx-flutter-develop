import 'package:blinx/data/services/http_service/content/source/remote/content_remote_data_source.dart';
import 'package:blinx/data/services/response_objects/articles/articles_response.dart';
import 'package:blinx/data/services/response_objects/content/content_response.dart';
import 'package:blinx/domain/entities/content/content.dart';
import 'package:blinx/domain/repostories/content_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/entities/article.dart';

@LazySingleton(as: ContentRepository)
class ContentRepositoryImpl implements ContentRepository {
  ContentRepositoryImpl(this._contentRemoteDataSource);

  final ContentRemoteDataSource _contentRemoteDataSource;

  @override
  Future<Content> getLifeContents() async {

    var t=await Future.wait([
      _contentRemoteDataSource.getLifeHeroContent(),
      _contentRemoteDataSource.getLifeTrendingContent(),
      _contentRemoteDataSource.getEditorsChoice('life',''),
      _contentRemoteDataSource.getLifeTopStoryContent(),
      _contentRemoteDataSource.getLifeReelsContent(),
      _contentRemoteDataSource.getLifeAdvertiseContent(),
    ]);

    final contentResponse=ContentResponse(
      heros: t[0] as List<Article>,
      trending: t[1] as List<Article>,
      editorsChoice: t[2] as ArticlesResponse,
      topStory: t[3] as List<Article>,
      reels: t[4] as List<Article>,
      advertises: t[5] as List<FAdvertise>,
    );

    final content = Content(
      heros: contentResponse.heros,
      trending: contentResponse.trending,
      editorsChoice: contentResponse.editorsChoice.results,
      topStory: contentResponse.topStory,
      reels: contentResponse.reels,
      advertises: contentResponse.getAdvertiseEntityList(),
    );
    return content;
  }

  @override
  Future<Content> getMoreContents() async {

    var t=await Future.wait([
      _contentRemoteDataSource.getMoreHeroContent(),
      _contentRemoteDataSource.getMoreTrendingContent(),
      _contentRemoteDataSource.getMoreTopStoryContent(),
      _contentRemoteDataSource.getMoreReelsContent(),
      _contentRemoteDataSource.getMoreAdvertiseContent(),
    ]);

    final contentResponse=ContentResponse(
      heros: t[0] as List<Article>,
      trending: t[1] as List<Article>,
      topStory: t[2] as List<Article>,
      reels: t[3] as List<Article>,
      advertises: t[4] as List<FAdvertise>,
    );

    final content = Content(
      heros: contentResponse.heros,
      trending: contentResponse.trending,
      editorsChoice: [],
      topStory: contentResponse.topStory,
      reels: contentResponse.reels,
      advertises: contentResponse.getAdvertiseEntityList(),
    );
    return content;
  }

  @override
  Future<Content> getNowContents() async {

    var t=await Future.wait([
      _contentRemoteDataSource.getNowHeroContent(),
      _contentRemoteDataSource.getNowTrendingContent(),
      _contentRemoteDataSource.getEditorsChoice('now',''),
      _contentRemoteDataSource.getNowTopStoryContent(),
      _contentRemoteDataSource.getNowReelsContent(),
      _contentRemoteDataSource.getNowAdvertiseContent(),
    ]);

    final contentResponse=ContentResponse(
      heros: t[0] as List<Article>,
      trending: t[1] as List<Article>,
      editorsChoice: t[2] as ArticlesResponse,
      topStory: t[3] as List<Article>,
      reels: t[4] as List<Article>,
      advertises: t[5] as List<FAdvertise>,
    );

    final content = Content(
      heros: contentResponse.heros,
      trending: contentResponse.trending,
      editorsChoice: contentResponse.editorsChoice.results,
      topStory: contentResponse.topStory,
      reels: contentResponse.reels,
      advertises: contentResponse.getAdvertiseEntityList(),
    );
    return content;
  }
}

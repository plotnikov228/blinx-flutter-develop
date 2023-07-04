import 'package:blinx/data/api/api_config.dart';
import 'package:blinx/domain/entities/storyteller_moments.dart';
import 'package:blinx/injection/injector.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'moments_response.freezed.dart';
part 'moments_response.g.dart';

@freezed
class MomentsResponse with _$MomentsResponse {
  const MomentsResponse._();

  const factory MomentsResponse({
    required List<_Moment> moments,
    required _Storyteller storyteller,
  }) = _MomentsResponse;

  factory MomentsResponse.fromJson(Map<String, dynamic> json) =>
      _$MomentsResponseFromJson(json);

  StorytellerMoments getEntity() {
    final avatar =
        injector<ApiConfig>().imageUrl + (storyteller.avatar.avatar ?? '');
    return StorytellerMoments(
      storyTellerId: storyteller.id,
      moments: _parseMoments(moments),
      storyTellerName: storyteller.displayName,
      storyTellerAvatarUrl: avatar,
    );
  }

  List<Moment> _parseMoments(List<_Moment> moments) {
    return moments.map((e) {
      final article = e.article;
      final type = article.media.primaryImage.videoId == null
          ? MomentItemType.image
          : MomentItemType.video;
      final imageUrl = injector<ApiConfig>().imageUrl +
          (article.media.primaryImage.source?.storycard ?? '');

      return Moment(
        type: type,
        id: article.id,
        imageUrl: imageUrl,
        path: e.article.path,
        seenByCurrentUser: e.read,
        publishDate: article.publishDate,
        likedByCurrentUser: article.isLiked,
        videoId: article.media.primaryImage.videoId ?? '',
        videoLength: article.media.primaryImage.videoLength,
      );
    }).toList();
  }
}

@freezed
class _Moment with _$_Moment {
  const factory _Moment({
    required _Article article,
    required bool read,
  }) = __Moment;

  factory _Moment.fromJson(Map<String, dynamic> json) =>
      _$_MomentFromJson(json);
}

@freezed
class _Article with _$_Article {
  const factory _Article({
    required String id,
    required String path,
    required String title,
    required String name,
    required String? description,
    required String? content,
    required _Category? category,
    required bool isHero,
    required bool isTopStory,
    required bool isTrending,
    required bool isLiked,
    required String articleType,
    required DateTime publishDate,
    required Media media,
  }) = __Article;

  factory _Article.fromJson(Map<String, dynamic> json) =>
      _$_ArticleFromJson(json);
}

@freezed
class _Category with _$_Category {
  const factory _Category({
    required String id,
    required String path,
    required String colors,
    required _Avatar coverImage,
    required String displayName,
    required String name,
    required bool liked,
  }) = __Category;

  factory _Category.fromJson(Map<String, dynamic> json) =>
      _$_CategoryFromJson(json);
}

@freezed
class _Avatar with _$_Avatar {
  const factory _Avatar({
    required String? avatar,
    required String? storycard,
  }) = __Avatar;

  factory _Avatar.fromJson(Map<String, dynamic> json) =>
      _$_AvatarFromJson(json);
}

@freezed
class Media with _$Media {
  const factory Media({
    @Default([]) List<_PrimaryImage> otherAssets,
    required _PrimaryImage primaryImage,
  }) = _Media;

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);
}

@freezed
class _PrimaryImage with _$_PrimaryImage {
  const factory _PrimaryImage({
    required String? id,
    required String? path,
    required _Avatar? source,
    required String? videoId,
    required int? videoLength,
    required String? title,
    required String? name,
    required String? description,
    required String? caption,
  }) = __PrimaryImage;

  factory _PrimaryImage.fromJson(Map<String, dynamic> json) =>
      _$_PrimaryImageFromJson(json);
}

@freezed
class _Storyteller with _$_Storyteller {
  const factory _Storyteller({
    required String id,
    required String path,
    required String name,
    required String displayName,
    required _Avatar avatar,
    required bool followed,
  }) = __Storyteller;

  factory _Storyteller.fromJson(Map<String, dynamic> json) =>
      _$_StorytellerFromJson(json);
}

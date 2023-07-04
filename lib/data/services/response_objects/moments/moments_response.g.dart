// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moments_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MomentsResponse _$$_MomentsResponseFromJson(Map<String, dynamic> json) =>
    _$_MomentsResponse(
      moments: (json['moments'] as List<dynamic>)
          .map((e) => _Moment.fromJson(e as Map<String, dynamic>))
          .toList(),
      storyteller:
          _Storyteller.fromJson(json['storyteller'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MomentsResponseToJson(_$_MomentsResponse instance) =>
    <String, dynamic>{
      'moments': instance.moments,
      'storyteller': instance.storyteller,
    };

_$__Moment _$$__MomentFromJson(Map<String, dynamic> json) => _$__Moment(
      article: _Article.fromJson(json['article'] as Map<String, dynamic>),
      read: json['read'] as bool,
    );

Map<String, dynamic> _$$__MomentToJson(_$__Moment instance) =>
    <String, dynamic>{
      'article': instance.article,
      'read': instance.read,
    };

_$__Article _$$__ArticleFromJson(Map<String, dynamic> json) => _$__Article(
      id: json['id'] as String,
      path: json['path'] as String,
      title: json['title'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      content: json['content'] as String?,
      category: json['category'] == null
          ? null
          : _Category.fromJson(json['category'] as Map<String, dynamic>),
      isHero: json['isHero'] as bool,
      isTopStory: json['isTopStory'] as bool,
      isTrending: json['isTrending'] as bool,
      isLiked: json['isLiked'] as bool,
      articleType: json['articleType'] as String,
      publishDate: DateTime.parse(json['publishDate'] as String),
      media: Media.fromJson(json['media'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$__ArticleToJson(_$__Article instance) =>
    <String, dynamic>{
      'id': instance.id,
      'path': instance.path,
      'title': instance.title,
      'name': instance.name,
      'description': instance.description,
      'content': instance.content,
      'category': instance.category,
      'isHero': instance.isHero,
      'isTopStory': instance.isTopStory,
      'isTrending': instance.isTrending,
      'isLiked': instance.isLiked,
      'articleType': instance.articleType,
      'publishDate': instance.publishDate.toIso8601String(),
      'media': instance.media,
    };

_$__Category _$$__CategoryFromJson(Map<String, dynamic> json) => _$__Category(
      id: json['id'] as String,
      path: json['path'] as String,
      colors: json['colors'] as String,
      coverImage: _Avatar.fromJson(json['coverImage'] as Map<String, dynamic>),
      displayName: json['displayName'] as String,
      name: json['name'] as String,
      liked: json['liked'] as bool,
    );

Map<String, dynamic> _$$__CategoryToJson(_$__Category instance) =>
    <String, dynamic>{
      'id': instance.id,
      'path': instance.path,
      'colors': instance.colors,
      'coverImage': instance.coverImage,
      'displayName': instance.displayName,
      'name': instance.name,
      'liked': instance.liked,
    };

_$__Avatar _$$__AvatarFromJson(Map<String, dynamic> json) => _$__Avatar(
      avatar: json['avatar'] as String?,
      storycard: json['storycard'] as String?,
    );

Map<String, dynamic> _$$__AvatarToJson(_$__Avatar instance) =>
    <String, dynamic>{
      'avatar': instance.avatar,
      'storycard': instance.storycard,
    };

_$_Media _$$_MediaFromJson(Map<String, dynamic> json) => _$_Media(
      otherAssets: (json['otherAssets'] as List<dynamic>?)
              ?.map((e) => _PrimaryImage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      primaryImage:
          _PrimaryImage.fromJson(json['primaryImage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MediaToJson(_$_Media instance) => <String, dynamic>{
      'otherAssets': instance.otherAssets,
      'primaryImage': instance.primaryImage,
    };

_$__PrimaryImage _$$__PrimaryImageFromJson(Map<String, dynamic> json) =>
    _$__PrimaryImage(
      id: json['id'] as String?,
      path: json['path'] as String?,
      source: json['source'] == null
          ? null
          : _Avatar.fromJson(json['source'] as Map<String, dynamic>),
      videoId: json['videoId'] as String?,
      videoLength: json['videoLength'] as int?,
      title: json['title'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      caption: json['caption'] as String?,
    );

Map<String, dynamic> _$$__PrimaryImageToJson(_$__PrimaryImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'path': instance.path,
      'source': instance.source,
      'videoId': instance.videoId,
      'videoLength': instance.videoLength,
      'title': instance.title,
      'name': instance.name,
      'description': instance.description,
      'caption': instance.caption,
    };

_$__Storyteller _$$__StorytellerFromJson(Map<String, dynamic> json) =>
    _$__Storyteller(
      id: json['id'] as String,
      path: json['path'] as String,
      name: json['name'] as String,
      displayName: json['displayName'] as String,
      avatar: _Avatar.fromJson(json['avatar'] as Map<String, dynamic>),
      followed: json['followed'] as bool,
    );

Map<String, dynamic> _$$__StorytellerToJson(_$__Storyteller instance) =>
    <String, dynamic>{
      'id': instance.id,
      'path': instance.path,
      'name': instance.name,
      'displayName': instance.displayName,
      'avatar': instance.avatar,
      'followed': instance.followed,
    };

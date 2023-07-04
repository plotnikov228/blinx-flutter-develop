// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Article _$$_ArticleFromJson(Map<String, dynamic> json) => _$_Article(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      path: json['path'] as String? ?? '',
      htmlContent: json['htmlContent'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      publishDate: json['publishDate'] == null
          ? null
          : DateTime.parse(json['publishDate'] as String),
      storytellers: (json['storytellers'] as List<dynamic>?)
          ?.map((e) => Storyteller.fromJson(e as Map<String, dynamic>))
          .toList(),
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [
            Category(id: '0', path: '', displayName: 'default', name: 'default')
          ],
      template: json['template'] as String?,
      description: json['description'] as String? ?? '',
      isHero: json['isHero'] as bool? ?? false,
      isTrending: json['isTrending'] as bool? ?? false,
      isTopStories: json['isTopStories'] as bool? ?? false,
      isLiked: json['isLiked'] as bool? ?? false,
      totalLikes: json['totalLikes'] as int? ?? 0,
      totalComments: json['totalComments'] as int? ?? 0,
      layout: json['layout'] as String?,
      articleType: json['articleType'] as String? ?? '',
      media: json['media'] == null
          ? null
          : Media.fromJson(json['media'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ArticleToJson(_$_Article instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'path': instance.path,
      'htmlContent': instance.htmlContent,
      'created': instance.created?.toIso8601String(),
      'publishDate': instance.publishDate?.toIso8601String(),
      'storytellers': instance.storytellers,
      'categories': instance.categories,
      'template': instance.template,
      'description': instance.description,
      'isHero': instance.isHero,
      'isTrending': instance.isTrending,
      'isTopStories': instance.isTopStories,
      'isLiked': instance.isLiked,
      'totalLikes': instance.totalLikes,
      'totalComments': instance.totalComments,
      'layout': instance.layout,
      'articleType': instance.articleType,
      'media': instance.media,
    };

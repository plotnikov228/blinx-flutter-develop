// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticleWrapper _$$_ArticleWrapperFromJson(Map<String, dynamic> json) =>
    _$_ArticleWrapper(
      articles: (json['articles'] as List<dynamic>)
          .map((e) => Article.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ArticleWrapperToJson(_$_ArticleWrapper instance) =>
    <String, dynamic>{
      'articles': instance.articles,
    };

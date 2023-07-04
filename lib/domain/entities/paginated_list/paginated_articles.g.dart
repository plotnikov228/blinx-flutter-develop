// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_articles.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaginatedArticles _$$_PaginatedArticlesFromJson(Map<String, dynamic> json) =>
    _$_PaginatedArticles(
      articlesList: (json['articlesList'] as List<dynamic>?)
              ?.map((e) => Article.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      currentPage: json['currentPage'] as int? ?? 1,
      total: json['total'] as int? ?? 0,
    );

Map<String, dynamic> _$$_PaginatedArticlesToJson(
        _$_PaginatedArticles instance) =>
    <String, dynamic>{
      'articlesList': instance.articlesList,
      'currentPage': instance.currentPage,
      'total': instance.total,
    };

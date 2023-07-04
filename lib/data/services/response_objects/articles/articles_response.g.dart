// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articles_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticlesResponse _$$_ArticlesResponseFromJson(Map<String, dynamic> json) =>
    _$_ArticlesResponse(
      total: json['total'] as int,
      offset: json['offset'] as int,
      limit: json['limit'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => Article.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ArticlesResponseToJson(_$_ArticlesResponse instance) =>
    <String, dynamic>{
      'total': instance.total,
      'offset': instance.offset,
      'limit': instance.limit,
      'results': instance.results,
    };

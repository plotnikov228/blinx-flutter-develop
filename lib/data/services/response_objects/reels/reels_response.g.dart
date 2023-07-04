// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reels_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReelsResponse _$$_ReelsResponseFromJson(Map<String, dynamic> json) =>
    _$_ReelsResponse(
      total: json['total'] as int,
      offset: json['offset'] as int,
      limit: json['limit'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => Article.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ReelsResponseToJson(_$_ReelsResponse instance) =>
    <String, dynamic>{
      'total': instance.total,
      'offset': instance.offset,
      'limit': instance.limit,
      'results': instance.results,
    };

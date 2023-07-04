// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContentResponse _$$_ContentResponseFromJson(Map<String, dynamic> json) =>
    _$_ContentResponse(
      heros: (json['heros'] as List<dynamic>?)
              ?.map((e) => Article.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      trending: (json['trending'] as List<dynamic>?)
              ?.map((e) => Article.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      editorsChoice: json['editorsChoice'] == null
          ? const ArticlesResponse(limit: 0, total: 0, offset: 0, results: [])
          : ArticlesResponse.fromJson(
              json['editorsChoice'] as Map<String, dynamic>),
      topStory: (json['topStory'] as List<dynamic>?)
              ?.map((e) => Article.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      reels: (json['reels'] as List<dynamic>?)
              ?.map((e) => Article.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      advertises: (json['advertises'] as List<dynamic>?)
              ?.map((e) => FAdvertise.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ContentResponseToJson(_$_ContentResponse instance) =>
    <String, dynamic>{
      'heros': instance.heros,
      'trending': instance.trending,
      'editorsChoice': instance.editorsChoice,
      'topStory': instance.topStory,
      'reels': instance.reels,
      'advertises': instance.advertises,
    };

_$_FAdvertise _$$_FAdvertiseFromJson(Map<String, dynamic> json) =>
    _$_FAdvertise(
      id: json['id'] as String,
      path: json['path'] as String,
      media: CoverImage.fromJson(json['media'] as Map<String, dynamic>),
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_FAdvertiseToJson(_$_FAdvertise instance) =>
    <String, dynamic>{
      'id': instance.id,
      'path': instance.path,
      'media': instance.media,
      'name': instance.name,
      'url': instance.url,
    };

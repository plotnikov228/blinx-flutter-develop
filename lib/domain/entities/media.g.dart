// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Media _$$_MediaFromJson(Map<String, dynamic> json) => _$_Media(
      otherAssets: (json['otherAssets'] as List<dynamic>?)
              ?.map((e) => PrimaryImage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      primaryImage:
          PrimaryImage.fromJson(json['primaryImage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MediaToJson(_$_Media instance) => <String, dynamic>{
      'otherAssets': instance.otherAssets,
      'primaryImage': instance.primaryImage,
    };

_$_PrimaryImage _$$_PrimaryImageFromJson(Map<String, dynamic> json) =>
    _$_PrimaryImage(
      id: json['id'] as String? ?? '',
      path: json['path'] as String? ?? '',
      source: json['source'] == null
          ? null
          : CoverImage.fromJson(json['source'] as Map<String, dynamic>),
      videoId: json['videoId'] as String?,
      videoLength: json['videoLength'] as int? ?? 0,
      title: json['title'] as String? ?? '',
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      caption: json['caption'] as String? ?? '',
      seekHead: (json['seekHead'] as num?)?.toDouble() ?? 0.0,
      width: (json['width'] as num?)?.toDouble() ?? 1920,
      height: (json['height'] as num?)?.toDouble() ?? 1080,
    );

Map<String, dynamic> _$$_PrimaryImageToJson(_$_PrimaryImage instance) =>
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
      'seekHead': instance.seekHead,
      'width': instance.width,
      'height': instance.height,
    };

_$_CoverImage _$$_CoverImageFromJson(Map<String, dynamic> json) =>
    _$_CoverImage(
      original: json['original'] as String? ?? '',
      mobileHero: json['mobileHero'] as String? ?? '',
      mobileArticle: json['mobileArticle'] as String? ?? '',
      mobileArticleSmall: json['mobileArticleSmall'] as String? ?? '',
      mobileBlinx: json['mobileBlinx'] as String? ?? '',
    );

Map<String, dynamic> _$$_CoverImageToJson(_$_CoverImage instance) =>
    <String, dynamic>{
      'original': instance.original,
      'mobileHero': instance.mobileHero,
      'mobileArticle': instance.mobileArticle,
      'mobileArticleSmall': instance.mobileArticleSmall,
      'mobileBlinx': instance.mobileBlinx,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Component _$$_ComponentFromJson(Map<String, dynamic> json) => _$_Component(
      type: json['type'] as String,
      data: Content.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ComponentToJson(_$_Component instance) =>
    <String, dynamic>{
      'type': instance.type,
      'data': instance.data,
    };

_$_Content _$$_ContentFromJson(Map<String, dynamic> json) => _$_Content(
      content: json['content'] as String? ?? '',
      media: (json['media'] as List<dynamic>?)
              ?.map((e) => _Media.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ContentToJson(_$_Content instance) =>
    <String, dynamic>{
      'content': instance.content,
      'media': instance.media,
    };

_$__Media _$$__MediaFromJson(Map<String, dynamic> json) => _$__Media(
      url: json['url'] as String? ?? '',
      videoId: json['videoId'] as String? ?? '',
      caption: json['caption'] as String? ?? '',
      source: json['source'] as String? ?? '',
      width: (json['width'] as num?)?.toDouble() ?? 1920,
      height: (json['height'] as num?)?.toDouble() ?? 1080,
    );

Map<String, dynamic> _$$__MediaToJson(_$__Media instance) => <String, dynamic>{
      'url': instance.url,
      'videoId': instance.videoId,
      'caption': instance.caption,
      'source': instance.source,
      'width': instance.width,
      'height': instance.height,
    };

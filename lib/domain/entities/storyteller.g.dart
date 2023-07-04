// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storyteller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Storyteller _$$_StorytellerFromJson(Map<String, dynamic> json) =>
    _$_Storyteller(
      path: json['path'] as String? ?? '',
      name: json['name'] as String? ?? '',
      displayName: json['displayName'] as String? ?? '',
      avatar: Avatar.fromJson(json['avatar'] as Map<String, dynamic>),
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      followed: json['followed'] as bool? ?? false,
      followers: json['followers'] as int? ?? 0,
      totalLikedContent: json['totalLikedContent'] as int? ?? 0,
    );

Map<String, dynamic> _$$_StorytellerToJson(_$_Storyteller instance) =>
    <String, dynamic>{
      'path': instance.path,
      'name': instance.name,
      'displayName': instance.displayName,
      'avatar': instance.avatar,
      'tags': instance.tags,
      'followed': instance.followed,
      'followers': instance.followers,
      'totalLikedContent': instance.totalLikedContent,
    };

_$_Avatar _$$_AvatarFromJson(Map<String, dynamic> json) => _$_Avatar(
      avatar: json['avatar'] as String? ?? '',
    );

Map<String, dynamic> _$$_AvatarToJson(_$_Avatar instance) => <String, dynamic>{
      'avatar': instance.avatar,
    };

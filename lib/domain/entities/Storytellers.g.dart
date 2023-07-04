// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storyteller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Storytellers _$$_StorytellersFromJson(Map<String, dynamic> json) =>
    _$_Storytellers(
      path: json['path'] as String,
      name: json['name'] as String,
      avatar: Avatar.fromJson(json['avatar'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StorytellersToJson(_$_Storytellers instance) =>
    <String, dynamic>{
      'path': instance.path,
      'name': instance.name,
      'avatar': instance.avatar,
    };

_$_Avatar _$$_AvatarFromJson(Map<String, dynamic> json) => _$_Avatar(
      original: json['original'] as String,
    );

Map<String, dynamic> _$$_AvatarToJson(_$_Avatar instance) => <String, dynamic>{
      'original': instance.original,
    };

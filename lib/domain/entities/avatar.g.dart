// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avatar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Avatar _$$_AvatarFromJson(Map<String, dynamic> json) => _$_Avatar(
      id: json['id'] as String,
      path: json['path'] as String,
      name: json['name'] as String,
      image: Image.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AvatarToJson(_$_Avatar instance) => <String, dynamic>{
      'id': instance.id,
      'path': instance.path,
      'name': instance.name,
      'image': instance.image,
    };

_$_Image _$$_ImageFromJson(Map<String, dynamic> json) => _$_Image(
      avatar: json['avatar'] as String,
    );

Map<String, dynamic> _$$_ImageToJson(_$_Image instance) => <String, dynamic>{
      'avatar': instance.avatar,
    };

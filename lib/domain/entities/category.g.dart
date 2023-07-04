// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Category _$$_CategoryFromJson(Map<String, dynamic> json) => _$_Category(
      id: json['id'] as String? ?? '',
      path: json['path'] as String? ?? '',
      colors: json['colors'] as String? ?? 'ocean',
      displayName: json['displayName'] as String? ?? '',
      name: json['name'] as String? ?? '',
      coverImage: json['coverImage'] == null
          ? null
          : CoverImage.fromJson(json['coverImage'] as Map<String, dynamic>),
      liked: json['liked'] as bool? ?? false,
    );

Map<String, dynamic> _$$_CategoryToJson(_$_Category instance) =>
    <String, dynamic>{
      'id': instance.id,
      'path': instance.path,
      'colors': instance.colors,
      'displayName': instance.displayName,
      'name': instance.name,
      'coverImage': instance.coverImage,
      'liked': instance.liked,
    };

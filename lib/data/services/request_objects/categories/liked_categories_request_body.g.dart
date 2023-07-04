// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'liked_categories_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LikedCategoriesRequestBody _$$_LikedCategoriesRequestBodyFromJson(
        Map<String, dynamic> json) =>
    _$_LikedCategoriesRequestBody(
      likedCategories: (json['likedCategories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_LikedCategoriesRequestBodyToJson(
        _$_LikedCategoriesRequestBody instance) =>
    <String, dynamic>{
      'likedCategories': instance.likedCategories,
    };

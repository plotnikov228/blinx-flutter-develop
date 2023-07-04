// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'replace_categories_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReplaceCategoriesRequestBody _$$_ReplaceCategoriesRequestBodyFromJson(
        Map<String, dynamic> json) =>
    _$_ReplaceCategoriesRequestBody(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_ReplaceCategoriesRequestBodyToJson(
        _$_ReplaceCategoriesRequestBody instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };

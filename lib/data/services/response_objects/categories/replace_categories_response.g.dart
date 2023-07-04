// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'replace_categories_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReplaceCategoriesResponse _$$_ReplaceCategoriesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ReplaceCategoriesResponse(
      id: json['id'] as int,
      version: json['version'] as int,
      createDate: json['createDate'] as String,
      updateDate: json['updateDate'] as String,
      categoriesList: (json['categoriesList'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_ReplaceCategoriesResponseToJson(
        _$_ReplaceCategoriesResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'version': instance.version,
      'createDate': instance.createDate,
      'updateDate': instance.updateDate,
      'categoriesList': instance.categoriesList,
    };

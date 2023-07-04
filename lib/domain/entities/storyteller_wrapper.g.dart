// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storyteller_wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SStorytellerWrapper _$$_SStorytellerWrapperFromJson(
        Map<String, dynamic> json) =>
    _$_SStorytellerWrapper(
      storyteller:
          Storyteller.fromJson(json['storyteller'] as Map<String, dynamic>),
      articlesCount: json['articlesCount'] as int,
    );

Map<String, dynamic> _$$_SStorytellerWrapperToJson(
        _$_SStorytellerWrapper instance) =>
    <String, dynamic>{
      'storyteller': instance.storyteller,
      'articlesCount': instance.articlesCount,
    };

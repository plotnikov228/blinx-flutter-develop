// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preference_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PreferenceRequestBody _$$_PreferenceRequestBodyFromJson(
        Map<String, dynamic> json) =>
    _$_PreferenceRequestBody(
      latestUpdates: json['latestUpdates'] as bool,
      forYou: json['forYou'] as bool,
      trending: json['trending'] as bool,
      breakingStories: json['breakingStories'] as bool,
      storytellerUpdates: json['storytellerUpdates'] as bool,
    );

Map<String, dynamic> _$$_PreferenceRequestBodyToJson(
        _$_PreferenceRequestBody instance) =>
    <String, dynamic>{
      'latestUpdates': instance.latestUpdates,
      'forYou': instance.forYou,
      'trending': instance.trending,
      'breakingStories': instance.breakingStories,
      'storytellerUpdates': instance.storytellerUpdates,
    };

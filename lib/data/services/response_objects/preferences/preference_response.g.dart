// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preference_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PreferenceResponse _$$_PreferenceResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PreferenceResponse(
      latestUpdates: json['latestUpdates'] as bool,
      forYou: json['forYou'] as bool,
      trending: json['trending'] as bool,
      breakingStories: json['breakingStories'] as bool,
      storytellerUpdates: json['storytellerUpdates'] as bool,
    );

Map<String, dynamic> _$$_PreferenceResponseToJson(
        _$_PreferenceResponse instance) =>
    <String, dynamic>{
      'latestUpdates': instance.latestUpdates,
      'forYou': instance.forYou,
      'trending': instance.trending,
      'breakingStories': instance.breakingStories,
      'storytellerUpdates': instance.storytellerUpdates,
    };

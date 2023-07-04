// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Preference _$$_PreferenceFromJson(Map<String, dynamic> json) =>
    _$_Preference(
      latestUpdates: json['latestUpdates'] as bool,
      forYou: json['forYou'] as bool,
      trending: json['trending'] as bool,
      breakingStories: json['breakingStories'] as bool,
      storytellerUpdates: json['storytellerUpdates'] as bool,
    );

Map<String, dynamic> _$$_PreferenceToJson(_$_Preference instance) =>
    <String, dynamic>{
      'latestUpdates': instance.latestUpdates,
      'forYou': instance.forYou,
      'trending': instance.trending,
      'breakingStories': instance.breakingStories,
      'storytellerUpdates': instance.storytellerUpdates,
    };

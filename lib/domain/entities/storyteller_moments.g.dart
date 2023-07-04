// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storyteller_moments.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StorytellerMoments _$$_StorytellerMomentsFromJson(
        Map<String, dynamic> json) =>
    _$_StorytellerMoments(
      storyTellerId: json['storyTellerId'] as String,
      moments: (json['moments'] as List<dynamic>)
          .map((e) => Moment.fromJson(e as Map<String, dynamic>))
          .toList(),
      storyTellerName: json['storyTellerName'] as String,
      storyTellerAvatarUrl: json['storyTellerAvatarUrl'] as String? ?? '',
    );

Map<String, dynamic> _$$_StorytellerMomentsToJson(
        _$_StorytellerMoments instance) =>
    <String, dynamic>{
      'storyTellerId': instance.storyTellerId,
      'moments': instance.moments,
      'storyTellerName': instance.storyTellerName,
      'storyTellerAvatarUrl': instance.storyTellerAvatarUrl,
    };

_$_Moment _$$_MomentFromJson(Map<String, dynamic> json) => _$_Moment(
      id: json['id'] as String,
      path: json['path'] as String,
      imageUrl: json['imageUrl'] as String,
      videoId: json['videoId'] as String,
      videoLength: json['videoLength'] as int?,
      type: $enumDecode(_$MomentItemTypeEnumMap, json['type']),
      seenByCurrentUser: json['seenByCurrentUser'] as bool,
      likedByCurrentUser: json['likedByCurrentUser'] as bool,
      publishDate: DateTime.parse(json['publishDate'] as String),
    );

Map<String, dynamic> _$$_MomentToJson(_$_Moment instance) => <String, dynamic>{
      'id': instance.id,
      'path': instance.path,
      'imageUrl': instance.imageUrl,
      'videoId': instance.videoId,
      'videoLength': instance.videoLength,
      'type': _$MomentItemTypeEnumMap[instance.type]!,
      'seenByCurrentUser': instance.seenByCurrentUser,
      'likedByCurrentUser': instance.likedByCurrentUser,
      'publishDate': instance.publishDate.toIso8601String(),
    };

const _$MomentItemTypeEnumMap = {
  MomentItemType.image: 'image',
  MomentItemType.video: 'video',
};

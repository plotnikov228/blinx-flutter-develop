// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationsResponse _$$_NotificationsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_NotificationsResponse(
      id: json['id'] as int,
      title: json['title'] as String,
      isRead: json['isRead'] as bool,
      article: Article.fromJson(json['article'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_NotificationsResponseToJson(
        _$_NotificationsResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'isRead': instance.isRead,
      'article': instance.article,
    };

_$__Storyteller _$$__StorytellerFromJson(Map<String, dynamic> json) =>
    _$__Storyteller(
      id: json['id'] as String,
      path: json['path'] as String,
      name: json['name'] as String,
      displayName: json['displayName'] as String,
      avatar: _Avatar.fromJson(json['avatar'] as Map<String, dynamic>),
      followed: json['followed'] as bool,
    );

Map<String, dynamic> _$$__StorytellerToJson(_$__Storyteller instance) =>
    <String, dynamic>{
      'id': instance.id,
      'path': instance.path,
      'name': instance.name,
      'displayName': instance.displayName,
      'avatar': instance.avatar,
      'followed': instance.followed,
    };

_$__Avatar _$$__AvatarFromJson(Map<String, dynamic> json) => _$__Avatar(
      avatar: json['avatar'] as String,
    );

Map<String, dynamic> _$$__AvatarToJson(_$__Avatar instance) =>
    <String, dynamic>{
      'avatar': instance.avatar,
    };

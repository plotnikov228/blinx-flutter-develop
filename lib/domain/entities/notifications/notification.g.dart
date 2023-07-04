// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InAppNotification _$$_InAppNotificationFromJson(Map<String, dynamic> json) =>
    _$_InAppNotification(
      id: json['id'] as int,
      article: Article.fromJson(json['article'] as Map<String, dynamic>),
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
      isRead: json['isRead'] as bool? ?? false,
    );

Map<String, dynamic> _$$_InAppNotificationToJson(
        _$_InAppNotification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'article': instance.article,
      'time': instance.time?.toIso8601String(),
      'isRead': instance.isRead,
    };

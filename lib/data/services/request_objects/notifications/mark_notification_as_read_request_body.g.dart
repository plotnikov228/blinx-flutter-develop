// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mark_notification_as_read_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MarkAsReadRequestBody _$$_MarkAsReadRequestBodyFromJson(
        Map<String, dynamic> json) =>
    _$_MarkAsReadRequestBody(
      notificationIds: (json['notificationIds'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$$_MarkAsReadRequestBodyToJson(
        _$_MarkAsReadRequestBody instance) =>
    <String, dynamic>{
      'notificationIds': instance.notificationIds,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateUserRequestBodyy _$$_UpdateUserRequestBodyyFromJson(
        Map<String, dynamic> json) =>
    _$_UpdateUserRequestBodyy(
      name: json['name'] as String? ?? null,
      username: json['username'] as String? ?? null,
      currentPassword: json['currentPassword'] as String? ?? null,
      newPassword: json['newPassword'] as String? ?? null,
    );

Map<String, dynamic> _$$_UpdateUserRequestBodyyToJson(
        _$_UpdateUserRequestBodyy instance) =>
    <String, dynamic>{
      'name': instance.name,
      'username': instance.username,
      'currentPassword': instance.currentPassword,
      'newPassword': instance.newPassword,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateUserResponse _$$_UpdateUserResponseFromJson(
        Map<String, dynamic> json) =>
    _$_UpdateUserResponse(
      id: json['id'] as int,
      email: json['email'] as String,
      name: json['name'] as String?,
      username: json['username'] as String,
      avatar: json['avatar'] == null
          ? null
          : Avatar.fromJson(json['avatar'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UpdateUserResponseToJson(
        _$_UpdateUserResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'username': instance.username,
      'avatar': instance.avatar,
    };

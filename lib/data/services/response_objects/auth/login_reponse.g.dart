// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_reponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginResponse _$$_LoginResponseFromJson(Map<String, dynamic> json) =>
    _$_LoginResponse(
      token: json['token'] as String,
      user: _User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LoginResponseToJson(_$_LoginResponse instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user': instance.user,
    };

_$__User _$$__UserFromJson(Map<String, dynamic> json) => _$__User(
      id: json['id'] as int,
      email: json['email'] as String,
      name: json['name'] as String?,
      username: json['username'] as String,
      avatar: json['avatar'] == null
          ? null
          : Avatar.fromJson(json['avatar'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$__UserToJson(_$__User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'username': instance.username,
      'avatar': instance.avatar,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_reponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegistrationResponse _$$_RegistrationResponseFromJson(
        Map<String, dynamic> json) =>
    _$_RegistrationResponse(
      id: json['id'] as int,
      email: json['email'] as String,
      username: json['username'] as String,
      token: json['token'] as String,
    );

Map<String, dynamic> _$$_RegistrationResponseToJson(
        _$_RegistrationResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'username': instance.username,
      'token': instance.token,
    };

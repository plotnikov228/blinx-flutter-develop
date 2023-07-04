// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_owner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentOwner _$$_CommentOwnerFromJson(Map<String, dynamic> json) =>
    _$_CommentOwner(
      username: json['username'] as String,
      preferred_username: json['preferred_username'] as String,
      avatar: json['avatar'] as String?,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_CommentOwnerToJson(_$_CommentOwner instance) =>
    <String, dynamic>{
      'username': instance.username,
      'preferred_username': instance.preferred_username,
      'avatar': instance.avatar,
      'id': instance.id,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Password _$$_PasswordFromJson(Map<String, dynamic> json) => _$_Password(
      json['value'] as String,
      requiredLength: json['requiredLength'] as int? ?? 8,
    );

Map<String, dynamic> _$$_PasswordToJson(_$_Password instance) =>
    <String, dynamic>{
      'value': instance.value,
      'requiredLength': instance.requiredLength,
    };

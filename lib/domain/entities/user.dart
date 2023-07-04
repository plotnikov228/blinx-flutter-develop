import 'dart:convert';

import 'package:blinx/domain/entities/avatar.dart';
import 'package:blinx/domain/entities/email.dart';
import 'package:blinx/domain/entities/username.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const User._();

  const factory User({
    required int id,
    required Email email,
    required Username name,
    required Username username,
    required Avatar? avatar,
    String? userId,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  factory User.fromJsonString(String jsonString) =>
      User.fromJson(json.decode(jsonString));

  factory User.empty() => User(
        id: 0,
        email: Email.empty(),
        name: Username.empty(),
        username: Username.empty(),
        avatar: null,
      );
}

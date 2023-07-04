import 'package:blinx/domain/entities/avatar.dart';
import 'package:blinx/domain/entities/email.dart';
import 'package:blinx/domain/entities/user.dart';
import 'package:blinx/domain/entities/username.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_reponse.freezed.dart';
part 'login_reponse.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  const LoginResponse._();

  const factory LoginResponse({
    required String token,
    required _User user,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  User getEntity() => User(
      id: 0,
      email: Email(user.email),
      name: Username(user.name ?? ''),
      username: Username(user.username),
      avatar: user.avatar);
}

@freezed
class _User with _$_User {
  const _User._();

  const factory _User({
    required int id,
    required String email,
    required String? name,
    required String username,
    required Avatar? avatar,
  }) = __User;

  factory _User.fromJson(Map<String, dynamic> json) => _$_UserFromJson(json);
}

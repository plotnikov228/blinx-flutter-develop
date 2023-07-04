import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request_body.freezed.dart';
part 'login_request_body.g.dart';

@freezed
class LoginRequestBody with _$LoginRequestBody {
  factory LoginRequestBody({
    required String email,
    required String password,
  }) = _LoginRequestBody;

  factory LoginRequestBody.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestBodyFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_request_body.g.dart';
part 'registration_request_body.freezed.dart';

@freezed
class RegistrationRequestBody with _$RegistrationRequestBody {
  factory RegistrationRequestBody({
    required String username,
    required String email,
    required String password,
  }) = _RegistrationRequestBody;

  factory RegistrationRequestBody.fromJson(Map<String, dynamic> json) =>
      _$RegistrationRequestBodyFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_reponse.g.dart';
part 'registration_reponse.freezed.dart';

@freezed
class RegistrationResponse with _$RegistrationResponse {
  const factory RegistrationResponse({
    required int id,
    required String email,
    required String username,
    required String token,
  }) = _RegistrationResponse;

  factory RegistrationResponse.fromJson(Map<String, dynamic> json) =>
      _$RegistrationResponseFromJson(json);
}

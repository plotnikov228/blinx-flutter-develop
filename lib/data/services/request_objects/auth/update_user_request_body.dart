import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_request_body.freezed.dart';
part 'update_user_request_body.g.dart';

@freezed
class UpdateUserRequestBody with _$UpdateUserRequestBody {
  factory UpdateUserRequestBody({
    @Default(null) String? name,
    @Default(null) String? username,
    @Default(null) String? currentPassword,
    @Default(null) String? newPassword,
  }) = _UpdateUserRequestBodyy;

  factory UpdateUserRequestBody.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserRequestBodyFromJson(json);
}

import 'package:blinx/domain/entities/avatar.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_response.freezed.dart';
part 'update_user_response.g.dart';

@freezed
class UpdateUserResponse with _$UpdateUserResponse {
  const factory UpdateUserResponse({
    required int id,
    required String email,
    required String? name,
    required String username,
    required Avatar? avatar,
  }) = _UpdateUserResponse;

  factory UpdateUserResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserResponseFromJson(json);
}

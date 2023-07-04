import 'package:freezed_annotation/freezed_annotation.dart';

part 'avatar_request_body.freezed.dart';
part 'avatar_request_body.g.dart';

@freezed
abstract class AvatarRequestBody with _$AvatarRequestBody {
  const factory AvatarRequestBody({
    required String avatar,
  }) = _AvatarRequestBody;

  factory AvatarRequestBody.fromJson(Map<String, dynamic> json) =>
      _$AvatarRequestBodyFromJson(json);
}

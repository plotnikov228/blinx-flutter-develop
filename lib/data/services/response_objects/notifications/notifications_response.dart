import 'package:blinx/domain/entities/article.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notifications_response.g.dart';
part 'notifications_response.freezed.dart';

@freezed
class NotificationsResponse with _$NotificationsResponse {
  const NotificationsResponse._();

  const factory NotificationsResponse({
    required int id,
    required String title,
    required bool isRead,
    required Article article,
  }) = _NotificationsResponse;

  factory NotificationsResponse.fromJson(Map<String, dynamic> json) =>
      _$NotificationsResponseFromJson(json);
}

@freezed
class _Storyteller with _$_Storyteller {
  const factory _Storyteller({
    required String id,
    required String path,
    required String name,
    required String displayName,
    required _Avatar avatar,
    required bool followed,
  }) = __Storyteller;

  factory _Storyteller.fromJson(Map<String, dynamic> json) =>
      _$_StorytellerFromJson(json);
}

@freezed
class _Avatar with _$_Avatar {
  const factory _Avatar({
    required String avatar,
  }) = __Avatar;

  factory _Avatar.fromJson(Map<String, dynamic> json) =>
      _$_AvatarFromJson(json);
}


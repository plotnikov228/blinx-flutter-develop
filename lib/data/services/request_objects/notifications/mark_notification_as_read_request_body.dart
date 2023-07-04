import 'package:freezed_annotation/freezed_annotation.dart';

part 'mark_notification_as_read_request_body.freezed.dart';
part 'mark_notification_as_read_request_body.g.dart';

@freezed
class MarkNotificationAsReadRequestBody
    with _$MarkNotificationAsReadRequestBody {
  const factory MarkNotificationAsReadRequestBody({
    required List<int> notificationIds,
  }) = _MarkAsReadRequestBody;

  factory MarkNotificationAsReadRequestBody.fromJson(
          Map<String, dynamic> json) =>
      _$MarkNotificationAsReadRequestBodyFromJson(json);
}

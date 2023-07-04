import 'package:blinx/domain/entities/article.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';


@freezed
class InAppNotification with _$InAppNotification {
  const InAppNotification._();
  const factory InAppNotification({
    required int id,
    required Article article,
    required DateTime? time,
    @Default(false) bool isRead,
  }) = _InAppNotification;

  String get imageUrl => article.imageUrl;

  String get type => article.categories.first.displayName;

   factory InAppNotification.fromJson(Map<String, dynamic> json) =>
      _$InAppNotificationFromJson(json);
}

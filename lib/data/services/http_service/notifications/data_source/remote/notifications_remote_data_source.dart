import 'package:blinx/data/services/request_objects/notifications/mark_notification_as_read_request_body.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:blinx/domain/entities/notifications/notification.dart';

part 'notifications_remote_data_source.g.dart';

@RestApi()
@lazySingleton
abstract class NotificationsRemoteDataSource {
  @factoryMethod
  factory NotificationsRemoteDataSource(Dio dio) =
      _NotificationsRemoteDataSource;

  @GET('/user/notifications?renditions=original,mobileHero,mobileArticle,mobileArticleSmall,mobileBlinx')
  Future<List<InAppNotification>> getAllNotifications();

  @PUT('/user/notifications/read')
  Future<void> markNotificationAsRead(
    @Body() MarkNotificationAsReadRequestBody body,
  );
}

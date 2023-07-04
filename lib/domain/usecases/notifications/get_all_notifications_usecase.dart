import 'package:blinx/domain/entities/notifications/notification.dart';
import 'package:blinx/domain/repostories/notifications_repository.dart';
import 'package:blinx/domain/usecases/use_case.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAllNotificationsUseCase
    extends FutureOutputUseCase<List<InAppNotification>> {
  final NotificationsRepository _notificationsRepository;

  GetAllNotificationsUseCase(this._notificationsRepository);

  @override
  Future<List<InAppNotification>> call() =>
      _notificationsRepository.getAllNotifications();
}

import 'package:blinx/domain/repostories/notifications_repository.dart';
import 'package:blinx/domain/usecases/use_case.dart';
import 'package:injectable/injectable.dart';

@injectable
class MarkNotificationAsReadUseCase extends FutureUseCase<List<int>, void> {
  final NotificationsRepository _notificationsRepository;

  MarkNotificationAsReadUseCase(this._notificationsRepository);

  @override
  Future<void> call(List<int> input) =>
      _notificationsRepository.markNotificationAsRead(input);
}

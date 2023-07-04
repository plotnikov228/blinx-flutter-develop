import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/domain/entities/notifications/notification.dart';
import 'package:blinx/domain/usecases/notifications/get_all_notifications_usecase.dart';
import 'package:blinx/domain/usecases/notifications/mark_notification_as_read_usecase.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notifications_state.dart';
part 'notifications_cubit.freezed.dart';

@injectable
class NotificationsCubit extends Cubit<NotificationsState> {
  NotificationsCubit(
    this._getAllNotificationsUseCase,
    this._markNotificationAsReadUseCase,
  ) : super(const NotificationsState());

  final GetAllNotificationsUseCase _getAllNotificationsUseCase;
  final MarkNotificationAsReadUseCase _markNotificationAsReadUseCase;

  void loadAllNotifications() {
    if (state.status.isLoading) {
      return;
    }

    _getAllNotificationsUseCase()
        .then(
          (notificationsList) => emit(
            state.copyWith(
              status: const BaseStatus.success(),
              notificationsList: notificationsList,
            ),
          ),
        )
        .onError(
          (error, stackTrace) => emit(
            state.copyWith(
              status: BaseStatus.failure(
                ResponseError.from(error!),
              ),
            ),
          ),
        );
  }

  void markAsRead(InAppNotification notification) {
    final index = state.notificationsList.indexOf(notification);
    final isFound = index != -1;

    if (isFound) {
      final notificationsList = [...state.notificationsList];
      notificationsList[index] = notificationsList[index].copyWith(
        isRead: true,
      );

      emit(state.copyWith(notificationsList: notificationsList));

      _markNotificationAsReadUseCase([notification.id]).onError(
        (error, stackTrace) {
          // Nothing to do here
        },
      );
    }
  }
}

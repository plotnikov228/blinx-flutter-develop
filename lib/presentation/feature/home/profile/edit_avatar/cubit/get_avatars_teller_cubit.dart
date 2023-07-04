import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/domain/usecases/avatars/get_avatars_usecase.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'get_avatars_state.dart';

@injectable
class GetAvatarsCubit extends Cubit<GetAvatarsState> {
  GetAvatarsCubit(this._getAvatarsUseCase) : super(GetAvatarsState()) {
    get();
  }
  final GetAvatarsUseCase _getAvatarsUseCase;

  void get() {
    if (state.status.isLoading) return;
    emit(state.copyWith(status: const BaseStatus.loading()));
    _getAvatarsUseCase.call().then((avatars) {
      emit(state.copyWith(
        avatars: avatars,
        status: const BaseStatus.success(),
      ));
    }).onError((error, stackTrace) {
      emit(state.copyWith(
        status: BaseStatus.failure(ResponseError.from(error!)),
      ));
    });
  }

  void update(String path) {
    emit(state.copyWith(
      selectedPath: path,
    ));
  }
}

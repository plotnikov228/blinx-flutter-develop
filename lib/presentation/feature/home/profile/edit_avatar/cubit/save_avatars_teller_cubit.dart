import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/domain/usecases/auth/save_avatars_usecase.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:blinx/presentation/feature/home/profile/edit_avatar/cubit/save_avatars_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class SaveAvatarsCubit extends Cubit<SaveAvatarsState> {
  SaveAvatarsCubit(this._saveAvatarsUseCase) : super(SaveAvatarsState());
  final SaveAvatarsUseCase _saveAvatarsUseCase;

  void save(String path) {
    if (state.status.isLoading) return;
    emit(state.copyWith(status: const BaseStatus.loading()));
    _saveAvatarsUseCase.call(path).then((value) {
      emit(state.copyWith(
        status: const BaseStatus.success(),
      ));
    }).onError((error, stackTrace) {
      emit(state.copyWith(
        status: BaseStatus.failure(ResponseError.from(error!)),
      ));
    });
  }
}

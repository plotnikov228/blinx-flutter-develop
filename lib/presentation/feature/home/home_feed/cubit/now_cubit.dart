import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/domain/entities/content/content.dart';
import 'package:blinx/domain/usecases/content/get_now_contents_usecase.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'now_state.dart';
part 'now_cubit.freezed.dart';

@injectable
class NowCubit extends Cubit<NowState> {
  NowCubit(this._getNowContentUseCase)
      : super(const NowState(status: BaseStatus.initial()));

  final GetNowContentUseCase _getNowContentUseCase;

  void loadNowContent({bool showShimmer = true}) {
    if (!state.status.isLoading) {
      if (showShimmer) {
        emit(state.copyWith(status: const BaseStatus.loading()));
      }

      _getNowContentUseCase().then((content) {
        return emit(
          state.copyWith(
            status: const BaseStatus.success(),
            content: content,
          ),
        );
      }).onError(
        (error, _) => emit(
          state.copyWith(
            status: BaseStatus.failure(ResponseError.from(error!)),
          ),
        ),
      );
    }
  }
}

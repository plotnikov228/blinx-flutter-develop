import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/domain/entities/content/content.dart';
import 'package:blinx/domain/usecases/content/get_life_contents_usecase.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'life_state.dart';
part 'life_cubit.freezed.dart';

@injectable
class LifeCubit extends Cubit<LifeState> {
  LifeCubit(this._getLifeContentUseCase)
      : super(const LifeState(status: BaseStatus.initial()));

  final GetLifeContentUseCase _getLifeContentUseCase;

  void loadLifeContent({bool showShimmer = true}) {
    if (state.status.isLoading) {
      return;
    }

    if (showShimmer) {
      emit(state.copyWith(status: const BaseStatus.loading()));
    }

    _getLifeContentUseCase().then((content) {
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

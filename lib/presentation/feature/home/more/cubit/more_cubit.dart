import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/domain/entities/content/content.dart';
import 'package:blinx/domain/usecases/content/get_more_contents_usecase.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'more_state.dart';
part 'more_cubit.freezed.dart';

@injectable
class MoreCubit extends Cubit<MoreState> {
  MoreCubit(this._getMoreContentUseCase)
      : super(const MoreState(status: BaseStatus.initial()));

  final GetMoreContentUseCase _getMoreContentUseCase;

  void loadMoreContent({bool showShimmer = true}) {
    if (!state.status.isLoading) {
      if (showShimmer) {
        emit(state.copyWith(status: const BaseStatus.loading()));
      }

      _getMoreContentUseCase().then((content) {
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

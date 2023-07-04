import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/domain/entities/storyteller_wrapper.dart';
import 'package:blinx/domain/usecases/storyteller/get_storytellers_usecase.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'get_story_teller_state.dart';

@injectable
class GetStoryTellerCubit extends Cubit<GetStoryTellerState> {
  GetStoryTellerCubit(this._getStorytellersUsecase)
      : super(GetStoryTellerState());

  final GetStorytellersUsecase _getStorytellersUsecase;

  void getStorytellers() {
    emit(state.copyWith(status: const BaseStatus.loading()));
    _getStorytellersUsecase.call().then((storytellersWrappers) {
      emit(state.copyWith(
        storytellersWrappers: storytellersWrappers,
        status: const BaseStatus.success(),
      ));
    }).onError((error, stackTrace) {
      emit(state.copyWith(
        status: BaseStatus.failure(ResponseError.from(error!)),
      ));
    });
  }

  void update(String storyTellerPath, bool value) {
    emit(state.copyWith(
      status: const BaseStatus.loading(),
    ));
    var list = <StorytellerWrapper>[];
    try {
      list = state.storytellersWrappers.toList();
      var t = list
          .where((element) => element.storyteller.path == storyTellerPath)
          .first
          .storyteller;

      t.followed = value;
    } catch (e) {}

    emit(state.copyWith(
      status: const BaseStatus.success(),
      storytellersWrappers: list,
    ));
  }
}

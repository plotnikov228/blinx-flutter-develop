import 'dart:async';

import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/domain/entities/storyteller_moments.dart';
import 'package:blinx/domain/usecases/moments/get_moments_usecase.dart';
import 'package:blinx/domain/usecases/moments/mark_moment_as_seen_usecase.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'moments_cubit.freezed.dart';
part 'moments_state.dart';

@injectable
class MomentsCubit extends Cubit<MomentsState> {
  MomentsCubit(
    this._getMomentsUsecase,
    this._markMomentAsSeenUsecase,
  ) : super(MomentsState());
  final GetMomentsUsecase _getMomentsUsecase;
  final MarkMomentAsSeenUsecase _markMomentAsSeenUsecase;

  void loadMoments({bool showShimmer = true}) {
    if (state.status.isLoading) return;

    if (showShimmer) {
      emit(state.copyWith(status: const BaseStatus.loading()));
    }

    _getMomentsUsecase().then((storytellerMoments) {
      if (storytellerMoments.isNotEmpty) {
        selectStorytellerMoment(storytellerMoments.first);
      }
      emit(state.copyWith(
        storytellers: storytellerMoments,
        status: const BaseStatus.success(),
      ));
    }).onError((error, stackTrace) {
      emit(state.copyWith(
        status: BaseStatus.failure(ResponseError.from(error!)),
      ));
    });
  }

  void selectStorytellerMoment(StorytellerMoments moment) {
    final moments = {for (var e in moment.sortedItems()) e.id: e};

    emit(state.copyWith(
      moments: moments,
      selectedMoment: moment,
    ));
  }

  void clearEphemeralState() {

    if (state.storytellers.isNotEmpty) {
      selectStorytellerMoment(state.storytellers.first);
    }
  }

  void clearAllData() {
    emit(state.copyWith(
      selectedMoment: null,
      moments: {},
      storytellers: [],
    ));
  }

  void playNextMoment() {
    StorytellerMoments? newSelectedMoment;
    var found=false;

    for (var element in state.storytellers) {

      if(found&&newSelectedMoment==null) newSelectedMoment=element;

      if(element==state.selectedMoment) found=true;
    }

    if(newSelectedMoment!=null&&state.selectedMoment!=newSelectedMoment) selectStorytellerMoment(newSelectedMoment);
  }

  void seen(Moment moment) => _markMomentAsSeenUsecase(moment);
}

import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/domain/entities/storyteller.dart';
import 'package:blinx/domain/usecases/storyteller/follow_storytellers_usecase.dart';
import 'package:blinx/domain/usecases/storyteller/unfollow_storytellers_usecase.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:blinx/presentation/feature/home/cubit/get_story_teller_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/material.dart';

import '../../moments/cubit/moments_cubit.dart';
import 'follow_story_teller_state.dart';

@injectable
class FollowStoryTellerCubit extends Cubit<FollowStoryTellerState> {
  FollowStoryTellerCubit(this._followStorytellersUsecase,
      this._unfollowStorytellersUsecase)
      : super(FollowStoryTellerState());

  final FollowStorytellersUsecase _followStorytellersUsecase;
  final UnfollowStorytellersUsecase _unfollowStorytellersUsecase;

  void call(Storyteller storyteller, BuildContext context, {Function? f}) {
    if (storyteller.followed) {
      unfollowStorytellers(storyteller, context, f: f);
    } else {
      followStorytellers(storyteller, context, f: f);
    }
 
  }

  void followStorytellers(Storyteller storyteller, BuildContext context, {Function? f}) {
    emit(state.copyWith(
      status: const BaseStatus.loading(),
    ));

    _followStorytellersUsecase.follow(storyteller.path).then((res) {
      storyteller.followed = true;

      if (f != null) f(true);

      context.read<GetStoryTellerCubit>().getStorytellers();

      context.read<MomentsCubit>().loadMoments(showShimmer: false);

      emit(state.copyWith(
        status: const BaseStatus.success(),
      ));
    }).onError((error, stackTrace) {
      emit(state.copyWith(
        status: BaseStatus.failure(ResponseError.from(error!)),
      ));
    });
  }

  void unfollowStorytellers(Storyteller storyteller, BuildContext context, {Function? f}) {
    emit(state.copyWith(
      status: const BaseStatus.loading(),
    ));

    _unfollowStorytellersUsecase.unfollow(storyteller.path).then((res) {
      storyteller.followed = false;

      if (f != null) f(false);

      context.read<GetStoryTellerCubit>().getStorytellers();

      context.read<MomentsCubit>().loadMoments(showShimmer: false);

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

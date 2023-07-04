part of 'reels_loop_cubit.dart';

@freezed
class ReelsLoopState with _$ReelsLoopState {
  const factory ReelsLoopState(
      {required bool isAutoLoop, required bool onMute}) = _ReelsLoopState;
}

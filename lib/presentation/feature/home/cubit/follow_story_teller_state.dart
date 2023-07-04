import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'follow_story_teller_state.freezed.dart';

@freezed
class FollowStoryTellerState with _$FollowStoryTellerState {
  const FollowStoryTellerState._();

  factory FollowStoryTellerState({
    @Default(BaseStatus.success()) BaseStatus status,
  }) = _FollowStoryTellerState;
}

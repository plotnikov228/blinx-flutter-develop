import 'package:blinx/domain/entities/storyteller_wrapper.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_story_teller_state.freezed.dart';

@freezed
class GetStoryTellerState with _$GetStoryTellerState {
  const GetStoryTellerState._();

  factory GetStoryTellerState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default([]) List<StorytellerWrapper> storytellersWrappers,
  }) = _GetStoryTellerState;

  bool get hasStorytellers => storytellersCount > 0;

  int get storytellersCount => storytellersWrappers.length;
}

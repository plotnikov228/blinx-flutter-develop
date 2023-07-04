import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_avatars_state.freezed.dart';

@freezed
class SaveAvatarsState with _$SaveAvatarsState {
  const SaveAvatarsState._();

  factory SaveAvatarsState({
    @Default(BaseStatus.initial()) BaseStatus status,
  }) = _SaveAvatarsState;
}

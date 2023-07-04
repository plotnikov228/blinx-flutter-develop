import 'package:blinx/domain/entities/avatar.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_avatars_state.freezed.dart';

@freezed
class GetAvatarsState with _$GetAvatarsState {
  const GetAvatarsState._();

  factory GetAvatarsState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default([]) List<Avatar> avatars,
    @Default('') String selectedPath,
  }) = _GetAvatarsState;
}

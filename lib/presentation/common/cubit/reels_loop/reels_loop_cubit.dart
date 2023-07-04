import 'package:blinx/domain/preferences/app_preferences.dart';
import 'package:blinx/injection/injector.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'reels_loop_cubit.freezed.dart';
part 'reels_loop_state.dart';

@injectable
class ReelsLoopCubit extends Cubit<ReelsLoopState> {
  ReelsLoopCubit()
      : super(
          const ReelsLoopState(isAutoLoop: true, onMute: true),
        );

  void getVidSettings() {
    final _appPreferences = injector.get<AppPreferences>();
    final isAutoLoop = _appPreferences.isAutoLoop;
    final onMute = _appPreferences.onMute;
    emit(
      state.copyWith(
        isAutoLoop: isAutoLoop,
        onMute: onMute,
      ),
    );
  }

  void toggleAutoPlay() {
    final _appPreferences = injector.get<AppPreferences>();
    _appPreferences.setAutoLoop(!state.isAutoLoop);

    emit(
      state.copyWith(
        isAutoLoop: !state.isAutoLoop,
      ),
    );
  }

  void toggleOnMute() {
    final _appPreferences = injector.get<AppPreferences>();
    _appPreferences.setOnMute(!state.onMute);

    emit(
      state.copyWith(
        onMute: !state.onMute,
      ),
    );
  }
}

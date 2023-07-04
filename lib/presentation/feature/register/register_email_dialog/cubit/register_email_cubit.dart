import 'package:blinx/domain/entities/email.dart';
import 'package:blinx/domain/usecases/auth/validate_email_usecase.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'register_email_state.dart';
part 'register_email_cubit.freezed.dart';

@injectable
class RegisterEmailCubit extends Cubit<RegisterEmailState> {
  final CheckEmailAlreadyResgisteredUseCase
      _checkEmailAlreadyResgisteredUseCase;
  RegisterEmailCubit(this._checkEmailAlreadyResgisteredUseCase)
      : super(RegisterEmailState(
          email: Email.empty(),
          status: const BaseStatus.initial(),
        ));

  void onChangedEmail(String email) {
    emit(state.copyWith(email: Email(email)));
  }

  Future<void> checkIfEmailExists(String email) async {
    emit(state.copyWith(status: const BaseStatus.loading()));
    final isRegistered = await _checkEmailAlreadyResgisteredUseCase.call(email);
    if (!isRegistered) {
      emit(state.copyWith(status: const BaseStatus.valid()));
    } else {
      emit(state.copyWith(status: const BaseStatus.invalid()));
    }
  }
}

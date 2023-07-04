import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/domain/entities/password.dart';
import 'package:blinx/domain/usecases/auth/change_password_usecase.dart';
import 'package:blinx/presentation/utils/my_cognito_user_pool.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'change_password_cubit.freezed.dart';
part 'change_password_state.dart';

@injectable
class ChangePasswordCubit extends Cubit<ChangePasswordState> {
  ChangePasswordCubit(this._changePasswordUseCase)
      : super(ChangePasswordState.initial());

  final ChangePasswordUseCase _changePasswordUseCase;

  void changePassword() async {
    if (state.isLoading) return;

    emit(state.copyWith(
      error: null,
      isLoading: true,
      savedSuccessfully: false,
    ));

    if (/*injector.get<AppFlavor>().name == 'production'*/ true) {
      final userPool = MyCognitoUserPool.getCognitoUserPool();
      final currentUser = await userPool.getCurrentUser();

      if (currentUser != null) {
        await currentUser
            .changePassword(
                state.currentPassword.value, state.newPassword.value)
            .then((bool value) {
          emit(state.copyWith(
            isLoading: false,
            savedSuccessfully: value,
          ));
        }).onError((error, stackTrace) {
          emit(state.copyWith(
            isLoading: false,
            error: ResponseError.from(error!),
          ));
        });
      }
    } else {
      await _changePasswordUseCase
          .call(ChangePasswordInput(state.currentPassword, state.newPassword))
          .then((value) {
        emit(state.copyWith(
          isLoading: false,
          savedSuccessfully: true,
        ));
      }).onError((Object error, stackTrace) {
        emit(state.copyWith(
          isLoading: false,
          error: ResponseError.from(error),
        ));
      });
    }
  }

  void setCurrentPassword(String currentPassword) {
    emit(state.copyWith(
      savedSuccessfully: false,
      currentPassword: Password(currentPassword),
      error: null,
    ));
  }

  void setNewPassword(String newPassword) {
    emit(state.copyWith(
      savedSuccessfully: false,
      newPassword: Password(newPassword),
      error: null,
    ));
  }

  void setConfirmPassword(String confirmPassword) {
    emit(state.copyWith(
      savedSuccessfully: false,
      confirmPassword: Password(confirmPassword),
      error: null,
    ));
  }
}

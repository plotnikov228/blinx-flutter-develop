import 'package:amazon_cognito_identity_dart_2/cognito.dart';
import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/domain/entities/email.dart';
import 'package:blinx/domain/usecases/reset_password/forgot_password_usecase.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:blinx/presentation/utils/my_cognito_user_pool.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'reset_password_cubit.freezed.dart';
part 'reset_password_state.dart';

@injectable
class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  ResetPasswordCubit(this._forgetPasswordUseCase)
      : super(
          ResetPasswordState(
            status: const BaseStatus.initial(),
            email: Email.empty(),
          ),
        );
  final ForgetPasswordUseCase _forgetPasswordUseCase;

  void onChangedEmail(String emailInput) {
    emit(state.copyWith(
      email: Email(emailInput.trim()),
    ));
  }

  void resetButtonState() {
    emit(state.copyWith(status: const BaseStatus.initial()));
  }

  void sendResetLinkToEmail() {
    emit(state.copyWith(status: const BaseStatus.loading()));

    if (/*injector.get<AppFlavor>().name == 'production'*/true) {
      final userPool = MyCognitoUserPool.getCognitoUserPool();
      final cognitoUser = CognitoUser(state.email.value, userPool);
      cognitoUser.forgotPassword().then((value) {
        emit(state.copyWith(
          status: const BaseStatus.success(),
        ));
      }).onError((error, stackTrace) {
        emit(state.copyWith(
          status: BaseStatus.failure(ResponseError.from(error!)),
        ));
      });
    } else {
      _forgetPasswordUseCase.call(state.email.value).then((value) {
        emit(state.copyWith(status: const BaseStatus.success()));
      }).onError((Object error, stackTrace) {
        emit(state.copyWith(
          status: BaseStatus.failure(ResponseError.from(error)),
        ));
      });
    }
  }
}

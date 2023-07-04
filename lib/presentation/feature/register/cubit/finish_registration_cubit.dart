import 'package:amazon_cognito_identity_dart_2/cognito.dart';
import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/domain/entities/email.dart';
import 'package:blinx/domain/entities/password.dart';
import 'package:blinx/domain/entities/username.dart';
import 'package:blinx/domain/usecases/auth/registration_usecase.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:blinx/presentation/utils/my_cognito_user_pool.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'finish_registration_cubit.freezed.dart';
part 'finish_registration_state.dart';

@injectable
class FinishRegistrationCubit extends Cubit<FinishRegistrationState> {
  FinishRegistrationCubit(this._registrationUseCase)
      : super(
          FinishRegistrationState(
            email: Email.empty(),
            password: Password.empty(),
            username: Username.empty(),
            status: const BaseStatus.initial(),
            showPasswordError: false,
          ),
        );

  final RegistrationUseCase _registrationUseCase;

  void onChangedEmail(String email) {
    emit(state.copyWith(
      email: Email(email.trim()),
      status: const BaseStatus.initial(),
    ));
  }

  void onChangedUsername(String username) {
    emit(state.copyWith(
        email: Email(state.email.value.trim()),
        status: const BaseStatus.initial(),
        username: Username(username)));
  }

  void onChangedPassword(String password) {
    emit(state.copyWith(
      email: Email(state.email.value.trim()),
      password: Password(password),
      status: const BaseStatus.initial(),
      showPasswordError: !Password(password).isValid,
    ));
  }

  void register() async {
    if (state.status.isLoading) return;

    emit(state.copyWith(status: const BaseStatus.loading()));

    if (/*injector.get<AppFlavor>().name == 'production'*/true) {
      final userPool = MyCognitoUserPool.getCognitoUserPool();

      final userAttributes = [
        AttributeArg(name: 'email', value: state.email.value),
        AttributeArg(name: 'preferred_username', value: state.username.value),
      ];

      await userPool
          .signUp(
        state.email.value,
        state.password.value,
        userAttributes: userAttributes,
      )
          .then((value) {
        emit(state.copyWith(status: const BaseStatus.success()));
      }).onError((error, stackTrace) {
        emit(
          state.copyWith(
              status: BaseStatus.failure(ResponseError.from(error!))),
        );
      });
    } else {
      await _registrationUseCase
          .call(RegistrationInput(state.username, state.email, state.password))
          .then((_) {
        emit(
          state.copyWith(status: const BaseStatus.success()),
        );
      }).onError(
        (Object error, stackTrace) {
          emit(
            state.copyWith(
                status: BaseStatus.failure(ResponseError.from(error))),
          );
        },
      );
    }
  }
}

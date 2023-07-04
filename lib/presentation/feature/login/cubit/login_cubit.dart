import 'package:amazon_cognito_identity_dart_2/cognito.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/domain/entities/email.dart';
import 'package:blinx/domain/entities/password.dart';
import 'package:blinx/domain/entities/user.dart';
import 'package:blinx/domain/entities/username.dart';
import 'package:blinx/domain/preferences/auth_preferences.dart';
import 'package:blinx/domain/preferences/user_preferences.dart';
import 'package:blinx/domain/usecases/auth/login_with_email_and_password_usecase.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/feature/home/reels/cubit/reels_cubit.dart';
import 'package:blinx/presentation/feature/moments/cubit/moments_cubit.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:blinx/presentation/utils/my_cognito_user_pool.dart';
import 'package:blinx/presentation/widgets/snackbar/app_snackbar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  LoginCubit(
    this._loginWithEmailAndPasswordUseCase,
  ) : super(LoginState.initial());

  final LoginWithEmailAndPasswordUseCase _loginWithEmailAndPasswordUseCase;

  void login(BuildContext context) async {
    if (state.isLoggingIn) return;

    emit(state.copyWith(error: null, isLoggingIn: true));

    if (/*injector.get<AppFlavor>().name == 'production'*/true) {
      final userPool = MyCognitoUserPool.getCognitoUserPool();

      final cognitoUser = CognitoUser(
        state.email.value,
        userPool,
        storage: userPool.storage,
      );

      final authDetails = AuthenticationDetails(
        username: state.email.value,
        password: state.password.value,
      );

      cognitoUser.setAuthenticationFlowType('USER_PASSWORD_AUTH');
      await cognitoUser.authenticateUser(authDetails).then((value) async {
        await cognitoUser.cacheTokens();

        var authPreferences = injector.get<AuthPreferences>();
        var userPreferences = injector.get<UserPreferences>();

        var name='';
        var username='';
        var email='';
        var id = '';

        try {
          var attributes = await cognitoUser.getUserAttributes();

          for (var element in attributes!) {

            if(element.name=='name') name=element.value.toString();
            if(element.name=='preferred_username') username=element.value.toString();
            if(element.name=='email') email=element.value.toString();
            if(element.name=='sub') id=element.value.toString();
          }
        } catch(e) { }

        await userPreferences.setUser(User(
          id: 0,
          email: Email.empty().copyWith(
            value: email,
          ),
          name: Username.empty().copyWith(
            value: name,
          ),
          username: Username.empty().copyWith(
            value: username,
          ),
          avatar: null,
          userId: id,
        ));
        await authPreferences
            .setAccessToken(value!.getAccessToken().getJwtToken().toString());

        context.read<MomentsCubit>().loadMoments(showShimmer: false);
        context.read<ReelsCubit>().loadReels(showShimmer: false);

        emit(state.copyWith(
          isLoggingIn: false,
          loggedInSuccessfully: true,
        ));
      }).onError((error, stackTrace) {
        var i13 = context.localization.error;
        if (error is CognitoClientException) {
          if (error.code == 'UserNotConfirmedException') {
            context.router.push(ConfirmEmailScreenRoute(
              email: state.email.value,
              username: '',
              password: state.password.value,
              forceResend: true, name: '',
            ));
          } else if (error.code == 'NotAuthorizedException') {
            AppSnackBar.showErrorMessage(
              context,
              title: i13.incorrectUsernameOrPassword,
            );
          } else {
            AppSnackBar.showErrorMessage(
              context,
              title: i13.userDoesNotExist,
            );
          }
        }
        emit(state.copyWith(
          isLoggingIn: false,
        ));
      });
    } else {
      await _loginWithEmailAndPasswordUseCase
          .call(LoginInput(state.email, state.password))
          .then((value) {
        emit(state.copyWith(
          isLoggingIn: false,
          loggedInSuccessfully: true,
        ));
      }).onError((Object error, stackTrace) {
        emit(state.copyWith(
          isLoggingIn: false,
          error: ResponseError.from(error),
        ));
      });
    }
  }

  void setEmail(String email) {
    emit(state.copyWith(
      email: Email(email.trim()),
      error: null,
    ));
  }

  void setPassword(String password) {
    emit(state.copyWith(
      email: Email(state.email.value.trim()),
      password: Password(password),
      error: null,
    ));
  }
}

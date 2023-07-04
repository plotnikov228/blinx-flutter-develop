import 'package:auto_route/auto_route.dart';
import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:blinx/presentation/feature/register/cubit/finish_registration_cubit.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:blinx/presentation/widgets/app_button.dart';
import 'package:blinx/presentation/widgets/snackbar/app_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FinishRegistrationButton extends StatelessWidget {
  const FinishRegistrationButton({
    Key? key,
  }) : super(key: key);

  void _onRegisterPressed(BuildContext context) {
    context.read<FinishRegistrationCubit>().register();
  }

  void _showErrorMessage(BuildContext context, String errorText) =>
      AppSnackBar.showErrorMessage(
        context,
        title: errorText,
      );

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.login;

    return BlocConsumer<FinishRegistrationCubit, FinishRegistrationState>(
      listener: (context, state) {
        state.status.whenOrNull(
          success: () {
            if (/*injector.get<AppFlavor>().name == 'production'*/true) {
              context.router.push(ConfirmEmailScreenRoute(
                  email: state.email.value,
                  name: '',
                  username: state.username.value,
                  password: state.password.value));
            } else {
              context.router.removeWhere(
                  (route) => route.name == UnauthorizedProfileScreenRoute.name);
              context.router.replace(const OnboardingScreenRoute());
            }
          },
          failure: (ResponseError error) {
            if (/*injector.get<AppFlavor>().name == 'production'*/true) {
              var _i13 = context.localization.error;
              AppSnackBar.showErrorMessage(
                context,
                title: _i13.emailAlreadyExists,
              );
            } else {
              _showErrorMessage(context, error.getErrorMessage(context));
            }
          },
        );
      },
      builder: (context, state) => AppButton.rounded(
        isLoading: state.status.isLoading,
        title: i18n.registerAction,
        onPressed:
            state.isSignupFormValid ? () => _onRegisterPressed(context) : null,
      ),
    );
  }
}

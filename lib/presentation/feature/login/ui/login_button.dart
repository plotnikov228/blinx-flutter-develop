import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/feature/login/cubit/login_cubit.dart';
import 'package:blinx/presentation/routes/app_navigator.dart';
import 'package:blinx/presentation/widgets/app_button.dart';
import 'package:blinx/presentation/widgets/snackbar/app_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  void _showErrorMessage(BuildContext context, String errorText) =>
      AppSnackBar.showErrorMessage(
        context,
        title: errorText,
      );

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state.loggedInSuccessfully) {

          AppSnackBar.showSuccessMessage(
            context,
            title: context.localization.login.headline,
          );
          context.navigateToHomeScreen();
        }

        if (state.error != null) {
          _showErrorMessage(context, state.error!.getErrorMessage(context));
        }
      },
      builder: (context, state) {
        return AppButton.rounded(
          title: context.localization.auth.loginAction,
          isLoading: state.isLoggingIn,
          onPressed: !state.canLogin
              ? null
              : () => context.read<LoginCubit>().login(context),
        );
      },
    );
  }
}

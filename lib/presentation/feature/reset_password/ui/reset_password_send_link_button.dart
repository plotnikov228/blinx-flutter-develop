import 'package:auto_route/auto_route.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:blinx/presentation/feature/reset_password/cubit/reset_password_cubit.dart';
import 'package:blinx/presentation/feature/reset_password/reset_password_screen.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:blinx/presentation/widgets/app_button.dart';
import 'package:blinx/presentation/widgets/snackbar/app_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timer_count_down/timer_count_down.dart';

class ResetPasswordSendLinkButton extends StatelessWidget {
  const ResetPasswordSendLinkButton({
    Key? key,
  }) : super(key: key);

  void _onPressedSendLink(BuildContext context) {
    FocusManager.instance.primaryFocus?.unfocus();
    context.read<ResetPasswordCubit>().sendResetLinkToEmail();
  }

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.resetPassword;

    return BlocConsumer<ResetPasswordCubit, ResetPasswordState>(
      listenWhen: (previous, current) => (previous.status != current.status),
      listener: (context, state) {
        state.status.whenOrNull(success: () {
          if (/*injector.get<AppFlavor>().name == 'production'*/true) {
            context.router.push(UpdatePasswordScreenRoute(
              email: state.email.value,
            ));
          } else {
            AppSnackBar.showSuccessMessage(
              context,
              title: i18n.resetLinkSent,
            );
          }
        }, failure: (e) {
          if (/*injector.get<AppFlavor>().name == 'production'*/true) {
            var i13 = context.localization.error;
            AppSnackBar.showErrorMessage(
              context,
              title: i13.cannotResetPassword,
            );
          }
        });
      },
      builder: (context, state) {
        return state.status.maybeWhen(
          success: () => Countdown(
            seconds: ResetPasswordScreen.resendTimeIntervalInSec,
            onFinished: context.read<ResetPasswordCubit>().resetButtonState,
            build: (context, time) {
              final text = i18n.resendLinkWithTime.replaceAll(
                '{time}',
                time.toStringAsFixed(0),
              );
              return AppButton.rounded(
                title: text,
                onPressed: null,
              );
            },
          ),
          orElse: () => AppButton.rounded(
            title: i18n.sendResetLink,
            isLoading: state.status.isLoading,
            onPressed: state.isFormDataValid
                ? () => _onPressedSendLink(context)
                : null,
          ),
        );
      },
    );
  }
}

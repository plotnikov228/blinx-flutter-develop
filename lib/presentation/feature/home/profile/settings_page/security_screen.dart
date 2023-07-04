import 'package:blinx/injection/injector.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/widgets/app_bar/blinx_app_bar.dart';
import 'package:blinx/presentation/widgets/app_button.dart';
import 'package:blinx/presentation/widgets/app_single_child_scroll_view.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:blinx/presentation/widgets/app_text_field.dart';
import 'package:blinx/presentation/widgets/snackbar/app_snackbar.dart';
import 'package:blinx/presentation/widgets/utilities/focus_scope_dismissible.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/presentation/feature/home/profile/manage_account/password_tab/cubit/change_password_cubit.dart';

class SecurityScreen extends StatelessWidget {
  const SecurityScreen({super.key});

  void _onPressedSave(BuildContext context) {
    FocusManager.instance.primaryFocus?.unfocus();
    context.read<ChangePasswordCubit>().changePassword();
  }

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.changePassword;
    return BlocProvider(
      create: (context) => injector.get<ChangePasswordCubit>(),
      child: BlocListener<ChangePasswordCubit, ChangePasswordState>(
        listener: (context, state) {
          if (state.savedSuccessfully) {
            AppSnackBar.showSuccessMessage(
              context,
              title: i18n.passwordChangeSuccess,
            );
          }
          if (state.error != null) {
            AppSnackBar.showSuccessMessage(
              context,
              title: i18n.passwordChangeError,
            );
          }
        },
        child: FocusScopeDismissible(
          child: Scaffold(
            appBar: BlinxAppBar.normal(
              backgroundColor: Colors.transparent,
              title: context.localization.profile.security,
              // actions: const [ProfileThemeSwitch()],
            ),
            body: AppSingleChildScrollView(
              padding: 24.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 16, 0, 60),
                    child: AppText.body500(
                      i18n.changePassword,
                      fontSize: 14,
                    ),
                  ),
                  BlocBuilder<ChangePasswordCubit, ChangePasswordState>(
                    builder: (context, state) {
                      return AppTextField(
                        labelText: i18n.currentPassword,
                        obscureText: true,
                        enabled: !state.isLoading,
                        suffix: Assets.icons.eye.svg(),
                        onChanged: context
                            .read<ChangePasswordCubit>()
                            .setCurrentPassword,
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  BlocBuilder<ChangePasswordCubit, ChangePasswordState>(
                    builder: (context, state) {
                      return AppTextField(
                        labelText: i18n.newPassword,
                        obscureText: true,
                        enabled: !state.isLoading,
                        suffix: Assets.icons.eye.svg(),
                        onChanged:
                            context.read<ChangePasswordCubit>().setNewPassword,
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  BlocBuilder<ChangePasswordCubit, ChangePasswordState>(
                    builder: (context, state) {
                      return AppTextField(
                        labelText: i18n.confirmPassword,
                        hasError: !state.confirmValid,
                        obscureText: true,
                        enabled: !state.isLoading,
                        suffix: Assets.icons.eye.svg(),
                        errorText: state.confirmValid
                            ? null
                            : context.localization.error.passwordDoesntMatch,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        textAlign: TextAlign.start,
                        onChanged: context
                            .read<ChangePasswordCubit>()
                            .setConfirmPassword,
                      );
                    },
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.131,
                  ),
                  BlocBuilder<ChangePasswordCubit, ChangePasswordState>(
                    builder: (context, state) {
                      return AppButton.rounded(
                        title: context.localization.manageAccount.save,
                        isLoading: state.isLoading,
                        onPressed: !state.canSave
                            ? null
                            : () => _onPressedSave(context),
                      );
                    },
                  ),
                ],
              ),
            ),
            // bottomSheet: Text('delete account'),
          ),
        ),
      ),
    );
  }
}

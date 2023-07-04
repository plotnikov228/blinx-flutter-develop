import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/feature/home/profile/manage_account/password_tab/cubit/change_password_cubit.dart';
import 'package:blinx/presentation/widgets/app_button.dart';
import 'package:blinx/presentation/widgets/app_single_child_scroll_view.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:blinx/presentation/widgets/app_text_field.dart';
import 'package:blinx/presentation/widgets/snackbar/app_snackbar.dart';
import 'package:blinx/presentation/widgets/utilities/focus_scope_dismissible.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordTab extends StatelessWidget {
  const PasswordTab({super.key});

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
            body: AppSingleChildScrollView(
              padding: 24.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 32, 0, 32),
                    child: AppText.titleLight(
                      i18n.changePassword,
                      textAlign: TextAlign.left,
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
                  const SizedBox(height: 8),
                  AppText.bodySmall(i18n.passwordHint),
                  const SizedBox(height: 36),
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
          ),
        ),
      ),
    );
  }
}

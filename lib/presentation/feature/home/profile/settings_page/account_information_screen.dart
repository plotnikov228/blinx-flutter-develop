import 'package:blinx/injection/injector.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/feature/home/profile/manage_account/personal_details_tab/cubit/personal_details_cubit.dart';
import 'package:blinx/presentation/feature/home/profile/manage_account/personal_details_tab/ui/delete_account_dialog.dart';
import 'package:blinx/presentation/feature/home/profile/manage_account/personal_details_tab/ui/personal_details_email_field.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_bar/blinx_app_bar.dart';
import 'package:blinx/presentation/widgets/app_button.dart';
import 'package:blinx/presentation/widgets/app_single_child_scroll_view.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:blinx/presentation/widgets/app_text_field.dart';
import 'package:blinx/presentation/widgets/snackbar/app_snackbar.dart';
import 'package:blinx/presentation/widgets/utilities/focus_scope_dismissible.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccountInformationScreen extends StatelessWidget {
  AccountInformationScreen({super.key});

  final _nameController = TextEditingController();
  final _usernameController = TextEditingController();

  void _onPressedSave(BuildContext context) {
    FocusManager.instance.primaryFocus?.unfocus();
    context.read<PersonalDetailsCubit>().savePersonalDetails(context);
  }

  void _showDeleteAccountDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => const DeleteAccountDialog(),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _usernameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.manageAccount;
    return BlocProvider(
      create: (context) => injector.get<PersonalDetailsCubit>()..init(),
      child: BlocListener<PersonalDetailsCubit, PersonalDetailsState>(
        listener: (context, state) {
          if (_usernameController.value.text.trim().isEmpty) {
            _nameController.text = state.user.name.value;
            _usernameController.text = state.user.username.value;
          }
          if (state.savedSuccessfully) {
            AppSnackBar.showSuccessMessage(
              context,
              title: i18n.successMessage,
            );
          }
          if (state.showDeleteAccountDialog) {
            _showDeleteAccountDialog(context);
          }
        },
        child: FocusScopeDismissible(
          child: Scaffold(
            appBar: BlinxAppBar.normal(
              backgroundColor: Colors.transparent,
              title: context.localization.profile.accountInformation,
              // actions: const [ProfileThemeSwitch()],
            ),
            body: AppSingleChildScrollView(
              padding: 24.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 16, 0, 60),
                    child: AppText.body500(i18n.changeYourProfileInformations,
                        fontSize: 14),
                  ),
                  BlocBuilder<PersonalDetailsCubit, PersonalDetailsState>(
                    builder: (context, state) {
                      return AppTextField(
                        labelText: i18n.name,
                        controller: _nameController,
                        enabled: !state.isLoading,
                        onChanged: context.read<PersonalDetailsCubit>().setName,
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  BlocBuilder<PersonalDetailsCubit, PersonalDetailsState>(
                    builder: (context, state) {
                      return AppTextField(
                        labelText: i18n.username,
                        controller: _usernameController,
                        enabled: false,
                        onChanged:
                            context.read<PersonalDetailsCubit>().setUserName,
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  const PersonalDetailsEmailField(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.131,
                  ),
                  BlocBuilder<PersonalDetailsCubit, PersonalDetailsState>(
                    builder: (context, state) {
                      return AppButton.rounded(
                        title: i18n.save,
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

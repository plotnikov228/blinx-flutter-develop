import 'package:auto_route/auto_route.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/feature/home/profile/manage_account/personal_details_tab/cubit/personal_details_cubit.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:blinx/presentation/widgets/app_button.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:blinx/presentation/widgets/snackbar/app_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeleteAccountDialog extends StatelessWidget {
  const DeleteAccountDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => injector.get<PersonalDetailsCubit>(),
      child: BlocListener<PersonalDetailsCubit, PersonalDetailsState>(
        listener: (context, state) {
          if (state.deletedSuccessfully) {
            AppSnackBar.showSuccessMessage(
              context,
              title: context.localization.manageAccount.accountDeleted,
            );
            context.router.push(const UnauthorizedProfileScreenRoute());
          }
        },
        child: Dialog(
          backgroundColor: context.colors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: SizedBox(
            width: 325,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText.body600Font20(
                    context.localization.manageAccount.deleteAccountDialogTitle,
                    color: context.colors.black,
                  ),
                  const SizedBox(height: 12),
                  AppText.subtitle(
                    context
                        .localization.manageAccount.deleteAccountDialogMessage,
                    color: context.colors.black,
                  ),
                  const SizedBox(height: 24),
                  AppButton.roundedSmall(
                    backgroundColor: context.colors.blue,
                    textColor: context.colors.primary,
                    title: context.localization.manageAccount.neverMind,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  const SizedBox(height: 18),
                  Center(
                    child:
                        BlocBuilder<PersonalDetailsCubit, PersonalDetailsState>(
                      builder: (context, state) {
                        return AppButton.textUnderlined(
                          title: context.localization.manageAccount.delete,
                          onPressed: context
                              .read<PersonalDetailsCubit>()
                              .deleteAccount,
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

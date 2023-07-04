import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:blinx/presentation/feature/register/register_email_dialog/cubit/register_email_cubit.dart';
import 'package:blinx/presentation/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailRegistrationNextButton extends StatelessWidget {
  const EmailRegistrationNextButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.defaultSection;
    final cubit = context.watch<RegisterEmailCubit>();
    return AppButton.rounded(
      isLoading: cubit.state.status.isLoading,
      title: i18n.next,
      onPressed: cubit.state.email.isValid
          ? () async {
              await cubit.checkIfEmailExists(cubit.state.email.value);
              //await context.navigateTo(const RegisterScreenRoute());
            }
          : null,
    );
  }
}

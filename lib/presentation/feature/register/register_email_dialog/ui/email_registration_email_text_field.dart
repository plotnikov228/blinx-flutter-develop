import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/feature/register/register_email_dialog/cubit/register_email_cubit.dart';
import 'package:blinx/presentation/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailRegistrationEmailTextField extends StatelessWidget {
  const EmailRegistrationEmailTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.login;
    return AppTextField(
      labelText: i18n.emailHint,
      onChanged: context.read<RegisterEmailCubit>().onChangedEmail,
    );
  }
}

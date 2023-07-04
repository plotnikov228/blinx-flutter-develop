import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/feature/reset_password/cubit/reset_password_cubit.dart';
import 'package:blinx/presentation/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResetPasswordEmailField extends StatefulWidget {
  const ResetPasswordEmailField({
    Key? key,
  }) : super(key: key);

  @override
  State<ResetPasswordEmailField> createState() =>
      _ResetPasswordEmailFieldState();
}

class _ResetPasswordEmailFieldState extends State<ResetPasswordEmailField> {
  late TextEditingController _emailController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.login;
    final cubit = context.read<ResetPasswordCubit>();

    _emailController.text = cubit.state.email.value;

    return AppTextField(
      controller: _emailController,
      labelText: i18n.emailHint,
      onChanged: cubit.onChangedEmail,
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }
}

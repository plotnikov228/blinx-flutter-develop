import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/feature/register/cubit/finish_registration_cubit.dart';
import 'package:blinx/presentation/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FinishRegistrationUsernameField extends StatelessWidget {
  const FinishRegistrationUsernameField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.registration;
    return AppTextField(
      labelText: i18n.username,
      onChanged: context.read<FinishRegistrationCubit>().onChangedUsername,
    );
  }
}

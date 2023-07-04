import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/feature/register/cubit/finish_registration_cubit.dart';
import 'package:blinx/presentation/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FinishRegistrationCreatePasswordField extends StatelessWidget {
  const FinishRegistrationCreatePasswordField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.registration;
    return BlocBuilder<FinishRegistrationCubit, FinishRegistrationState>(
      builder: (context, state) {
        return AppTextField(
          labelText: i18n.createPassword,
          suffix: Assets.icons.eye.svg(),
          obscureText: true,
          onChanged: context.read<FinishRegistrationCubit>().onChangedPassword,
          hasError: state.showPasswordError,
        );
      },
    );
  }
}

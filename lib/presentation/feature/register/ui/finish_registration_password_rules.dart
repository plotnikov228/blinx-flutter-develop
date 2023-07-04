import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/feature/register/cubit/finish_registration_cubit.dart';
import 'package:blinx/presentation/resources/app_colors.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FinishRegistrationPasswordRules extends StatelessWidget {
  const FinishRegistrationPasswordRules({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.registration;
    return BlocBuilder<FinishRegistrationCubit, FinishRegistrationState>(
      builder: (context, state) {
        return Align(
          alignment: AlignmentDirectional.centerStart,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 32),
            child: AppText.bodySmall(
              i18n.passwordHint,
              color: state.showPasswordError
                  ? context.colors.textRed
                  : context.colors.text,
            ),
          ),
        );
      },
    );
  }
}

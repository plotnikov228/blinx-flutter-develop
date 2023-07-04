import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/feature/home/profile/manage_account/personal_details_tab/cubit/personal_details_cubit.dart';
import 'package:blinx/presentation/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonalDetailsEmailField extends StatefulWidget {
  const PersonalDetailsEmailField({
    Key? key,
  }) : super(key: key);

  @override
  State<PersonalDetailsEmailField> createState() =>
      _PersonalDetailsEmailFieldState();
}

class _PersonalDetailsEmailFieldState extends State<PersonalDetailsEmailField> {
  late TextEditingController _emailController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.manageAccount;
    final cubit = context.watch<PersonalDetailsCubit>();

    _emailController.text = cubit.state.user.email.value;

    return AppTextField(
      enabled: false,
      controller: _emailController,
      labelText: i18n.email,
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }
}

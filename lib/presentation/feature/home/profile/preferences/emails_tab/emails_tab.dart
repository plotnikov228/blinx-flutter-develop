import 'package:blinx/injection/injector.dart';
import 'package:blinx/presentation/feature/home/profile/preferences/emails_tab/cubit/email_preference_cubit.dart';
import 'package:blinx/presentation/feature/home/profile/preferences/emails_tab/ui/emails_tab_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailsTab extends StatelessWidget {
  const EmailsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          injector.get<EmailPreferenceCubit>()..loadEmailPreference(),
      child: const Scaffold(
        body: EmailsTabBody(),
      ),
    );
  }
}

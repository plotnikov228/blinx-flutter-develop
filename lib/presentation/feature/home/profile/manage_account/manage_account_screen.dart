import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:blinx/presentation/widgets/app_tab_bar.dart';
import 'package:flutter/material.dart';

class ManageAccountScreen extends StatelessWidget {
  const ManageAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.manageAccount;
    return AppTabBar(
      routes: const [
        PersonalDetailsTabRoute(),
        PasswordTabRoute(),
      ],
      title: i18n.manageAccount,
      tabs: [
        Tab(
          text: i18n.personalDetails,
        ),
        Tab(
          text: i18n.password,
        ),
      ],
    );
  }
}

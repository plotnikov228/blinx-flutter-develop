import 'package:blinx/injection/injector.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/feature/home/profile/preferences/interests_tab/cubit/interests_cubit.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:blinx/presentation/widgets/app_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PreferencesScreen extends StatelessWidget {
  const PreferencesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.preference;
    return BlocProvider(
      create: (_) => injector.get<InterestsCubit>()..loadInterestsData(),
      child: AppTabBar(
        routes: const [
          InterestsTabRoute(),
        ],
        title: i18n.preferences,
        tabs: [
          Tab(
            text: i18n.interests,
          ),
        ],
      ),
    );
  }
}

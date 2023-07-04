import 'package:auto_route/auto_route.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/feature/home/profile/preferences/interests_tab/cubit/interests_cubit.dart';
import 'package:blinx/presentation/feature/onboarding/ui/onboarding_screen_body.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:blinx/presentation/widgets/app_bar/blinx_app_bar.dart';
import 'package:blinx/presentation/widgets/app_button.dart';
import 'package:blinx/presentation/widgets/snackbar/app_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.preference;
    return Scaffold(
      appBar: BlinxAppBar.normal(
        disableLeadingIcon: true,
        actions: [
          AppButton.text(
            title: i18n.skip,
            onPressed: () {
              AppSnackBar.showSuccessMessage(
                context,
                title: i18n.loggedInSuccess,
              );
              context.navigateTo(const HomeScreenRoute());
            },
            textColor: context.colors.text,
          ),
        ],
      ),
      body: BlocProvider(
        create: (_) => injector.get<InterestsCubit>()..loadInterestsData(),
        child: const OnboardingScreenBody(),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:blinx/presentation/feature/home/profile/preferences/interests_tab/cubit/interests_cubit.dart';
import 'package:blinx/presentation/feature/home/profile/preferences/interests_tab/ui/interests_section.dart';
import 'package:blinx/presentation/feature/home/profile/preferences/interests_tab/ui/interests_shimmer.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:blinx/presentation/widgets/app_button.dart';
import 'package:blinx/presentation/widgets/app_single_child_scroll_view.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:blinx/presentation/widgets/snackbar/app_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingScreenBody extends StatelessWidget {
  const OnboardingScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.preference;
    return BlocConsumer<InterestsCubit, InterestsState>(
      listenWhen: (_, current) =>
          current.status.isFailure || current.status.isValid,
      listener: (context, state) {
        state.status.whenOrNull(
          failure: (error) => AppSnackBar.showErrorMessage(context,
              title: error.getErrorMessage(context)),
          valid: () {
            AppSnackBar.showSuccessMessage(
              context,
              title: i18n.loggedInSuccess,
            );
            context.navigateTo(const HomeScreenRoute());
          },
        );
      },
      builder: (context, state) {
        return Scaffold(
          body: AppSingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 32),
                AppText.body800(
                  i18n.heading,
                  fontSize: 32,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                AppText.body800(
                  i18n.subHeading,
                  fontSize: 18,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 48),
                state.status.isLoading
                    ? const InterestsShimmer()
                    : Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child:
                            InterestsSection(categories: state.allCategories),
                      ),
              ],
            ),
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.fromLTRB(16, 32, 16, 50),
            child: AppButton.rounded(
              title: i18n.saveCollection,
              onPressed: state.canSave
                  ? () => context.read<InterestsCubit>().saveSelections()
                  : null,
            ),
          ),
        );
      },
    );
  }
}

import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:blinx/presentation/feature/home/profile/preferences/emails_tab/cubit/email_preference_cubit.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_single_child_scroll_view.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:blinx/presentation/widgets/snackbar/app_snackbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailsTabBody extends StatelessWidget {
  const EmailsTabBody({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.preference;
    return BlocListener<EmailPreferenceCubit, EmailPreferenceState>(
      listenWhen: (_, current) => current.status.isFailure,
      listener: (context, state) {
        state.status.whenOrNull(
          failure: (error) => AppSnackBar.showErrorMessage(context,
              title: error.getErrorMessage(context)),
        );
      },
      child: AppSingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            AppText.body800(
              i18n.allEmailers,
              fontSize: 18,
            ),
            const SizedBox(height: 32),
            AppText.body500(
              i18n.emailPreferenceSubHeading1,
              fontSize: 14,
            ),
            const SizedBox(height: 40),
            BlocBuilder<EmailPreferenceCubit, EmailPreferenceState>(
              builder: (context, state) {
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: AppText.body500(
                    i18n.allEmailers,
                    fontSize: 16,
                  ),
                  trailing: CupertinoSwitch(
                    activeColor: context.colors.blue,
                    trackColor: context.colors.switchTrack,
                    value: state.areAllOn,
                    onChanged: (value) => context
                        .read<EmailPreferenceCubit>()
                        .onAllItemsChange(value),
                  ),
                );
              },
            ),
            BlocBuilder<EmailPreferenceCubit, EmailPreferenceState>(
              builder: (context, state) {
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: AppText.body500(
                    i18n.latestUpdates,
                    fontSize: 16,
                  ),
                  trailing: CupertinoSwitch(
                    activeColor: context.colors.blue,
                    trackColor: context.colors.switchTrack,
                    value: state.latestUpdates,
                    onChanged: (value) => context
                        .read<EmailPreferenceCubit>()
                        .onLatestUpdatesChange(value),
                  ),
                );
              },
            ),
            BlocBuilder<EmailPreferenceCubit, EmailPreferenceState>(
              builder: (context, state) {
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: AppText.body500(
                    i18n.forYou,
                    fontSize: 16,
                  ),
                  trailing: CupertinoSwitch(
                    activeColor: context.colors.blue,
                    trackColor: context.colors.switchTrack,
                    value: state.forYou,
                    onChanged: (value) => context
                        .read<EmailPreferenceCubit>()
                        .onForYouChange(value),
                  ),
                );
              },
            ),
            BlocBuilder<EmailPreferenceCubit, EmailPreferenceState>(
              builder: (context, state) {
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: AppText.body500(
                    i18n.trending,
                    fontSize: 16,
                  ),
                  trailing: CupertinoSwitch(
                    activeColor: context.colors.blue,
                    trackColor: context.colors.switchTrack,
                    value: state.trending,
                    onChanged: (value) => context
                        .read<EmailPreferenceCubit>()
                        .onTrendingChange(value),
                  ),
                );
              },
            ),
            BlocBuilder<EmailPreferenceCubit, EmailPreferenceState>(
              builder: (context, state) {
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: AppText.body500(
                    i18n.breakingStories,
                    fontSize: 16,
                  ),
                  trailing: CupertinoSwitch(
                    activeColor: context.colors.blue,
                    trackColor: context.colors.switchTrack,
                    value: state.breakingStories,
                    onChanged: (value) => context
                        .read<EmailPreferenceCubit>()
                        .onBreakingStoriesChange(value),
                  ),
                );
              },
            ),
            BlocBuilder<EmailPreferenceCubit, EmailPreferenceState>(
              builder: (context, state) {
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: AppText.body500(
                    i18n.storytellerUpdates,
                    fontSize: 16,
                  ),
                  trailing: CupertinoSwitch(
                    activeColor: context.colors.blue,
                    trackColor: context.colors.switchTrack,
                    value: state.storytellerUpdates,
                    onChanged: (value) => context
                        .read<EmailPreferenceCubit>()
                        .onStorytellerUpdatesChange(value),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

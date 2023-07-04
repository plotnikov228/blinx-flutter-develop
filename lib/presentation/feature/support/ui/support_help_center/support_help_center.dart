import 'package:blinx/presentation/widgets/app_settings_title.dart';
import 'package:blinx/presentation/widgets/app_single_child_scroll_view.dart';
import 'package:blinx/presentation/widgets/expanded_title/app_expanded_title.dart';
import 'package:flutter/material.dart';
import 'package:blinx/nstack/nstack.dart';

class SupportHelpCenterTabPage extends StatelessWidget {
  const SupportHelpCenterTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.support;
    return AppSingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 24),
          AppSettingsTitle(text: i18n.loginIssues),
          const SizedBox(height: 12),
          AppExpandedTile(
            headingText: i18n.changeMyUsername,
            children: const [
              AppExpandedListTileItemText(text: '1. data'),
              AppExpandedListTileItemText(text: '1. data'),
            ],
          ),
          const SizedBox(height: 16),
          AppExpandedTile(
            headingText: i18n.resetOrChangeYourPassword,
            children: const [
              AppExpandedListTileItemText(text: '1. data'),
              AppExpandedListTileItemText(text: '1. data'),
            ],
          ),
          const SizedBox(height: 16),
          AppExpandedTile(
            headingText: i18n.emailUpdate,
            children: const [
              AppExpandedListTileItemText(text: '1. data'),
              AppExpandedListTileItemText(text: '1. data'),
            ],
          ),
          const SizedBox(height: 16),
          AppExpandedTile(
            headingText: i18n.deleteMyAccount,
            children: const [
              AppExpandedListTileItemText(text: '1. data'),
              AppExpandedListTileItemText(text: '1. data'),
            ],
          ),
          const SizedBox(height: 24),
          AppSettingsTitle(text: i18n.sharing),
          const SizedBox(height: 12),
          AppExpandedTile(
            headingText: i18n.shareArticles,
            children: const [
              AppExpandedListTileItemText(text: '1. data'),
              AppExpandedListTileItemText(text: '1. data'),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:blinx/presentation/widgets/tab_bar/app_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:blinx/nstack/nstack.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.support;
    return Scaffold(
      body: AppTabBar(
        isScrollable: true,
        routes: const [
          SupportHelpCenterTabPageRoute(),
          SupportContactUsTabPageRoute(),
          SupportShareYourStoryTabPageRoute()
        ],
        tabs: [
          Tab(text: i18n.helpCenter),
          Tab(text: i18n.contactUs),
          Tab(text: i18n.shareYourStory),
        ],
        title: i18n.support,
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_bar/ui/leading_action_button.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class AppTabBar extends StatelessWidget {
  const AppTabBar({
    super.key,
    required this.routes,
    required this.title,
    required this.tabs,
    this.isScrollable = false,
  });

  final List<PageRouteInfo<dynamic>> routes;
  final String title;
  final List<Tab> tabs;
  final bool isScrollable;

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: routes,
      builder: (context, child, controller) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: context.colors.background,
            titleSpacing: 0,
            title: Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 8, right: 16),
                    child: LeadingActionButton(),
                  ),
                  AppText.body800(
                    title,
                    fontSize: 20,
                  ),
                ],
              ),
            ),
            iconTheme: IconThemeData(
              color: context.colors.text,
            ),
            centerTitle: false,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(50),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 0.5,
                      color: context.colors.primary.withOpacity(.36),
                    ),
                  ),
                ),
                child: TabBar(
                  labelPadding: EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: isScrollable ? 12 : 0,
                  ),
                  unselectedLabelStyle: AppTextStyles.titleLight,
                  labelStyle: AppTextStyles.body800,
                  labelColor: context.colors.text,
                  indicatorColor: context.colors.blue,
                  controller: controller,
                  isScrollable: isScrollable,
                  tabs: tabs,
                ),
              ),
            ),
          ),
          body: child,
        );
      },
    );
  }
}

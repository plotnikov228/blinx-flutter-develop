import 'package:auto_route/auto_route.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_bar/ui/leading_action_button.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class AppTabBar extends StatelessWidget {
  const AppTabBar({
    super.key,
    required this.routes,
    this.title,
    required this.tabs,
  });

  final List<PageRouteInfo<dynamic>> routes;
  final String? title;
  final List<Tab> tabs;

  @override
  Widget build(BuildContext context) {
    final preferredSize =
        title == null ? kToolbarHeight + 12 : kToolbarHeight + 50;
    return AutoTabsRouter.tabBar(
      routes: routes,
      builder: (context, child, controller) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(preferredSize),
            child: Container(
              color: context.colors.background,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 10),
                    child: Row(
                      children: [
                        if (title != null) const LeadingActionButton(),
                        const SizedBox(width: 10),
                        if (title != null)
                          AppText.body800(
                            title!,
                            fontSize: 20,
                          ),
                      ],
                    ),
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 0.5,
                          color: context.colors.primary.withOpacity(.36),
                        ),
                      ),
                    ),
                    child: TabBar(
                      labelPadding: const EdgeInsets.symmetric(vertical: 5),
                      unselectedLabelStyle: AppTextStyles.titleLight,
                      labelStyle: AppTextStyles.body800.copyWith(
                        color: context.colors.text,
                      ),
                      labelColor: context.colors.text,
                      indicatorColor: context.colors.blue,
                      controller: controller,
                      tabs: tabs,
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: child,
        );
      },
    );
  }
}

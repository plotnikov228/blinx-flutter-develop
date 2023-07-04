import 'package:blinx/presentation/widgets/app_loading_indicator.dart';
import 'package:blinx/presentation/widgets/app_refresh_indicator.dart';
import 'package:flutter/material.dart';

typedef RefreshCallback = Future<void> Function();

Future<void> empty() async {}

class AppPaginationWrapper extends StatelessWidget {
  const AppPaginationWrapper({
    Key? key,
    this.showPaginationLoader = false,
    required this.onLoadMore,
    required this.child,
    this.isRefreshIndicatorEnabled = false,
    this.onRefresh = empty,
  }) : super(key: key);

  /// Pass the boolean to show the loader while fetching more data.
  final bool showPaginationLoader;

  /// Function to call when scrolling reaches at the bottom part.
  final VoidCallback onLoadMore;

  /// Child must has a bounded widget, if you're using a listview
  /// or a gridview which has an infinite height, use `shrinkWrap: true`
  /// to make it bounded
  final Widget child;

  final bool isRefreshIndicatorEnabled;

  final RefreshCallback onRefresh;

  @override
  Widget build(BuildContext context) {
    final customScrollView = CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate(
            [
              child,
              if (showPaginationLoader)
                const SafeArea(
                  child: AppLoadingIndicator(),
                ),
            ],
          ),
        ),
      ],
    );

    return NotificationListener(
      onNotification: (ScrollNotification scrollNotification) {
        final metrics = scrollNotification.metrics;

        if (metrics.pixels >= metrics.maxScrollExtent - 24) {
          onLoadMore();
        }
        return true;
      },
      child: isRefreshIndicatorEnabled
          ? AppRefreshIndicator(
              onRefresh: onRefresh,
              child: customScrollView,
            )
          : customScrollView,
    );
  }
}

import 'package:blinx/presentation/widgets/app_bar/ui/app_bar_home.dart';
import 'package:blinx/presentation/widgets/app_bar/ui/app_bar_normal.dart';
import 'package:blinx/presentation/widgets/app_bar/ui/app_bar_search_content.dart';
import 'package:flutter/material.dart';

enum _AppBarStyle {
  normal,
  home,
  search,
  comments,
}

class BlinxAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BlinxAppBar._({
    required this.appBarStyle,
    this.title,
    this.disableLeadingIcon = false,
    this.actions,
    this.backgroundColor,
    this.onTap,
    this.appBarHeight = 0,
  });

  final _AppBarStyle appBarStyle;
  final String? title;
  final bool disableLeadingIcon;
  final List<Widget>? actions;
  final Color? backgroundColor;

  final VoidCallback? onTap;
  final int appBarHeight;

  factory BlinxAppBar.home({Color? backgroundColor}) {
    return BlinxAppBar._(
      backgroundColor: backgroundColor,
      appBarStyle: _AppBarStyle.home,
    );
  }

  factory BlinxAppBar.normal({
    String? title,
    bool disableLeadingIcon = false,
    List<Widget>? actions,
    Color? backgroundColor,
  }) {
    return BlinxAppBar._(
      appBarStyle: _AppBarStyle.normal,
      title: title,
      disableLeadingIcon: disableLeadingIcon,
      actions: actions,
      backgroundColor: backgroundColor,
    );
  }

  factory BlinxAppBar.search({
    required VoidCallback onTap,
    int appBarHeight = 0,
  }) {
    return BlinxAppBar._(
      appBarStyle: _AppBarStyle.search,
      onTap: onTap,
      appBarHeight: appBarHeight,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      left: false,
      right: false,
      bottom: false,
      child: Container(
        color: backgroundColor ?? Colors.transparent,
        height: preferredSize.height,
        padding: EdgeInsetsDirectional.fromSTEB(
          16,
          0,
          16,
          appBarStyle == _AppBarStyle.home ? 10 : 8,
        ),
        child: _buildAppBarContent(),
      ),
    );
  }

  Widget _buildAppBarContent() {
    late Widget child;
    switch (appBarStyle) {
      case _AppBarStyle.home:
        child = const AppBarHomeContent();
        break;
      case _AppBarStyle.normal:
        child = AppBarNormalContent(
          title: title,
          disableLeadingIcon: disableLeadingIcon,
          actions: actions,
        );
        break;
      default:// _AppBarStyle.search:
        child = AppBarSearchContent(
          onTap: onTap ?? () {},
        );
        break;
    }
    return child;
  }

  @override
  Size get preferredSize {
    final height =
        appBarStyle == _AppBarStyle.home ? kToolbarHeight + 16 : kToolbarHeight;
    return Size.fromHeight(height + appBarHeight);
  }
}

import 'package:blinx/presentation/resources/resources.dart';
import 'package:flutter/material.dart';

typedef RefreshCallback = Future<void> Function();

class AppRefreshIndicator extends StatelessWidget {
  const AppRefreshIndicator({
    super.key,
    required this.onRefresh,
    required this.child,
  });

  final RefreshCallback onRefresh;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: context.colors.background,
      backgroundColor: context.colors.text,
      strokeWidth: 4,
      onRefresh: onRefresh,
      child: child,
    );
  }
}

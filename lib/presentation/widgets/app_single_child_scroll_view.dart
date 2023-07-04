import 'package:flutter/material.dart';

class AppSingleChildScrollView extends StatelessWidget {
  const AppSingleChildScrollView({
    Key? key,
    required this.child,
    this.padding = 16.0,
  }) : super(key: key);

  final Widget child;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: padding),
      physics: const BouncingScrollPhysics(),
      child: child,
    );
  }
}

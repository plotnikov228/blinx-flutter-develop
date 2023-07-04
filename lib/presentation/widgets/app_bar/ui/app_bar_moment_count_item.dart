import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class AppBarMomentCount extends StatelessWidget {
  const AppBarMomentCount({super.key, required this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    final countText = count.clamp(0, 99).toString();
    final cap = count > 99 ? '+' : '';

    return Container(
      height: 32,
      width: 32,
      padding: const EdgeInsets.only(top: 4),
      decoration: const BoxDecoration(
        gradient: AppGradients.orange,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: AppText.body700Font13(
          countText + cap,
          maxLines: 1,
          textAlign: TextAlign.center,
          color: Colors.white,
        ),
      ),
    );
  }
}

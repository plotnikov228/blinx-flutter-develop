import 'package:blinx/presentation/widgets/app_network_image.dart';
import 'package:flutter/material.dart';

class AppBarMomentItem extends StatelessWidget {
  const AppBarMomentItem({super.key, required this.momentImageUrl});

  final String momentImageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: const Size.square(32),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AppNetworkImage(
          imageUrl: momentImageUrl,
          height: 32,
          width: 32,
        ),
      ),
    );
  }
}

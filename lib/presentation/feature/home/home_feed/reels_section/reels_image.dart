import 'package:blinx/presentation/widgets/app_network_image.dart';
import 'package:flutter/material.dart';

class ReelsImage extends StatelessWidget {
  const ReelsImage({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(22.0),
      child: SizedBox(
        height: 320.26,
        width: 180,
        child: AppNetworkImage(
          imageUrl: imageUrl,
          // fit:BoxFit.fill
        ),
      ),
    );
  }
}

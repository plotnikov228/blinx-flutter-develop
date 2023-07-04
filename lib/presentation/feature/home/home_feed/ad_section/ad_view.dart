import 'package:blinx/presentation/widgets/app_network_image.dart';
import 'package:flutter/material.dart';

class AdvertisementView extends StatelessWidget {
  const AdvertisementView({Key? key, required this.imageUrl}) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    if (imageUrl.isEmpty) {
      return const SizedBox.shrink();
    }

    final adWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: SizedBox(
        height: adWidth,
        width: adWidth,
        child: AppNetworkImage(
          imageUrl: imageUrl,
        ),
      ),
    );
  }
}

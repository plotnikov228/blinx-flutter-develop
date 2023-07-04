import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_network_image.dart';
import 'package:blinx/presentation/widgets/shimmer_box.dart';
import 'package:flutter/material.dart';

class GridBlinxComponent extends StatelessWidget {
  const GridBlinxComponent({
    Key? key,
    required this.imageUrl,
    this.onPlayIconTap,
    this.isLoading = false,
  }) : super(key: key);

  final String imageUrl;
  final Function()? onPlayIconTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      // borderRadius: BorderRadius.circular(12.0),
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          isLoading ? const ShimmerBox() : AppNetworkImage(imageUrl: imageUrl),
          IconButton(
            onPressed: onPlayIconTap,
            icon: Assets.icons.play.svg(color: context.colors.white),
          ),
        ],
      ),
    );
  }
}

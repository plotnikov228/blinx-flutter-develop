import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/shimmer_box.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AppNetworkImage extends StatelessWidget {
  const AppNetworkImage({
    super.key,
    required this.imageUrl,
    this.placeholder,
    this.errorWidget,
    this.onImageLoaded,
    this.height,
    this.width,
    this.alignment,
    this.fit
  });

  final String imageUrl;
  final Widget Function(BuildContext, String)? placeholder;
  final Widget Function(BuildContext, String, dynamic)? errorWidget;
  final VoidCallback? onImageLoaded;
  final double? height;
  final double? width;
  final Alignment? alignment;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    final foregroundColor = context.colors.text;
    if (imageUrl.isEmpty) {
      return const SizedBox.shrink();
    }
    return CachedNetworkImage(
      imageUrl: imageUrl.replaceAll('/author', ''),
      fit: fit??BoxFit.cover,
      height: height,
      width: width,
      // maxHeightDiskCache: height?.ceil().toInt() ?? 1080, // to limit cache size
      // memCacheHeight: height?.ceil().toInt() ?? 1080, // to limit cache size
      alignment: alignment ?? Alignment.center,
      placeholder: placeholder ?? (_, __) => const ShimmerBox(),
      imageBuilder: onImageLoaded == null
          ? null
          : (_, image) {
              onImageLoaded!.call();
              return Image(image: image);
            },
      errorWidget: errorWidget ??
          (_, __, ___) => Assets.icons.blinxLogo.svg(
                color: foregroundColor,
              ),
    );
  }
}

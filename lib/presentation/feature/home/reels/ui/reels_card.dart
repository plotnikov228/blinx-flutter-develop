import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_network_image.dart';
import 'package:blinx/presentation/widgets/shimmer_box.dart';
import 'package:flutter/material.dart';

import '../../../../../domain/entities/article.dart';
import 'reels_preview_card.dart';

class ReelsCard extends StatelessWidget { // карточка видео
  const ReelsCard({
    Key? key,
    required this.imageUrl,
    this.onPlayIconTap,
    this.isLoading = false,
    this.squared = false, this.playingVideo = false, required this.article,
  }) : super(key: key);

  final String imageUrl;
  final Function()? onPlayIconTap;
  final bool isLoading;
  final bool squared;
  final bool playingVideo;
  final Article article;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(squared ? 0 : 12.0),
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          isLoading ? const ShimmerBox() : playingVideo ? ReelsPreviewCard(article: article,): AppNetworkImage(imageUrl: imageUrl),
          IconButton(
            onPressed: onPlayIconTap,
            icon: Assets.icons.play.svg(color: context.colors.white),
          ),
        ],
      ),
    );
  }
}

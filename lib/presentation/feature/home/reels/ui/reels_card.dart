import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_network_image.dart';
import 'package:blinx/presentation/widgets/shimmer_box.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../../../../domain/entities/article.dart';
import 'reels_preview_card.dart';

class ReelsCard extends StatelessWidget { // карточка видео
  const ReelsCard({
    Key? key,
    required this.imageUrl,
    this.onPlayIconTap,
    this.isLoading = false,

    this.squared = false, this.playingVideo = false, required this.article,  this.canPlay = false, this.vpController,
  }) : super(key: key);
  final VideoPlayerController? vpController;
  final String imageUrl;
  final Function()? onPlayIconTap;
  final bool isLoading;
  final bool squared;
  final bool playingVideo;
  final bool canPlay;
  final Article article;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: isLoading,
        child: Hero(
          tag: article.path,
          child:  GestureDetector(
            onTap: onPlayIconTap,
            child: Card(
              color: Colors.transparent,
              margin: const EdgeInsets.all(1),
              elevation: 0, child: ClipRRect(
              borderRadius: BorderRadius.circular(squared ? 0 : 12.0),
              child: Stack(
                fit: StackFit.expand,
                alignment: Alignment.center,
                children: [
                  isLoading ? const ShimmerBox() : playingVideo && vpController != null && vpController!.value.isInitialized? ReelsPreviewCard(article: article, canPlay: canPlay, vpController: vpController,) : AppNetworkImage(imageUrl: imageUrl),
                  /*IconButton(
                    onPressed: onPlayIconTap,
                    icon: Assets.icons.play.svg(color: context.colors.white),
                  ),*/
                ],
              ),
            ),
        ),
          ),
      ),
    );
  }
}

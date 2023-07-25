import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../../../../domain/entities/article.dart';
import '../../../../widgets/shimmer_box.dart';

/*
class ReelsPreviewCard extends StatefulWidget {
  final VideoPlayerController vpController;
  final Article article;
   bool canPlay;

   ReelsPreviewCard({Key? key, required this.article, this.canPlay = false, required this.vpController}) : super(key: key);

  @override
  State<ReelsPreviewCard> createState() => _ReelsPreviewCardState();
}

class _ReelsPreviewCardState extends State<ReelsPreviewCard> {


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    vpController.dispose();
  }
  bool initialized = false;


  @override
  Widget build(BuildContext context) {
    return !initialized ? const ShimmerBox() : VideoPlayer(
      widget.vpController,
    );
  }
}
*/

class ReelsPreviewCard extends StatelessWidget {
  const ReelsPreviewCard({super.key, this.vpController, required this.article, required this.canPlay});
  final VideoPlayerController? vpController;
  final Article article;
  final bool canPlay;

  @override
  Widget build(BuildContext context) {
    return vpController == null ? const ShimmerBox() : VideoPlayer(
      vpController!,
    );
  }
}

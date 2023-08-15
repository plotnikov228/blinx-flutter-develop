import 'package:better_video_player/better_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../../../../domain/entities/article.dart';
import '../../../../widgets/app_network_image.dart';
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
  const ReelsPreviewCard(
      {super.key,
      this.vpController,
      required this.article,
      required this.canPlay});

  final BetterVideoPlayerController? vpController;
  final Article article;
  final bool canPlay;

  @override
  Widget build(BuildContext context) {
    return vpController == null
        ? const ShimmerBox()
        : IgnorePointer(
            child: BetterVideoPlayer(
              isFullScreen: true,
              dataSource: BetterVideoPlayerDataSource.network(
                  'https://edge.api.brightcove.com/playback/v1/accounts/6314458267001/videos/${article.videoId}/master.m3u8?bcov_auth=eyJhbGciOiJSUzI1NiJ9.eyJhY2NpZCI6IjYzMTQ0NTgyNjcwMDEiLCJpYXQiOjE2Nzg3ODE5NDYsImV4cCI6NDA3MDg5ODA2MX0.DtQV2jIiQ4ipxTJzBg2w1lBdev6CJGRUBzldtUA7_0Ewl0jcVm_ErsOPAwOHV9r3ddy2lutT15MHMjyoVOG9gvP9919kqv40BAOBZJzcehz3MsYWWh4JDWhKDtBh2atRmeh4daYhNXqgmMeE9cioKycV_WEt7PexTE6ztMumdkh3rYDm4pdvpEvWZc1tN0K4ff91OM2oWZb8SRlVEJnDIU6exDfd6pUNZd80IoSVRKvHexFbX-IOMzK3bAvPf3l9X6c9ns70me08-ng9WyKmcuUXkeyDbS55OrG0b2v2VavryOBbwhU91hVYV0QokowOqO0fv0Au13NWpMrNQnSNuw'),
              controller: vpController!,
              configuration: BetterVideoPlayerConfiguration(
                  controls: const BetterVideoPlayerControls(
                    isFullScreen: true,
                  ),
                  mute: true,
                  looping: true,
                  autoPlay: canPlay,
                  autoPlayWhenResume: true,
                  placeholder: AppNetworkImage(imageUrl: article.imageUrl)),
            ),
          );
  }
}

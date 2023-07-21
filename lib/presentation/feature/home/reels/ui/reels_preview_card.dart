import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../../../../domain/entities/article.dart';

class ReelsPreviewCard extends StatefulWidget {

  final Article article;

  const ReelsPreviewCard({Key? key, required this.article}) : super(key: key);

  @override
  State<ReelsPreviewCard> createState() => _ReelsPreviewCardState();
}

class _ReelsPreviewCardState extends State<ReelsPreviewCard> {
  @override
  Widget build(BuildContext context) {
    final vpControllers = addVid(
        'https://edge.api.brightcove.com/playback/v1/accounts/6314458267001/videos/${widget
            .article
            .videoId}/master.m3u8?bcov_auth=eyJhbGciOiJSUzI1NiJ9.eyJhY2NpZCI6IjYzMTQ0NTgyNjcwMDEiLCJpYXQiOjE2Nzg3ODE5NDYsImV4cCI6NDA3MDg5ODA2MX0.DtQV2jIiQ4ipxTJzBg2w1lBdev6CJGRUBzldtUA7_0Ewl0jcVm_ErsOPAwOHV9r3ddy2lutT15MHMjyoVOG9gvP9919kqv40BAOBZJzcehz3MsYWWh4JDWhKDtBh2atRmeh4daYhNXqgmMeE9cioKycV_WEt7PexTE6ztMumdkh3rYDm4pdvpEvWZc1tN0K4ff91OM2oWZb8SRlVEJnDIU6exDfd6pUNZd80IoSVRKvHexFbX-IOMzK3bAvPf3l9X6c9ns70me08-ng9WyKmcuUXkeyDbS55OrG0b2v2VavryOBbwhU91hVYV0QokowOqO0fv0Au13NWpMrNQnSNuw');

    vpControllers.play().then((value) {
      setState(() {

      });
    });
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: VideoPlayer(
        vpControllers,
      ),
    );
  }

  VideoPlayerController addVid(String st) {
    var vp = VideoPlayerController.contentUri(
      Uri.parse(st),
    );
    vp.setVolume(0.0);
    vp.initialize().then((value) {
      setState(() {});
    });
      vp.setLooping(true);
    return vp;
  }
}

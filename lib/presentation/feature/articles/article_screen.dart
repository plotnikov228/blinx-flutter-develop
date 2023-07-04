import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/presentation/feature/articles/ui/article_body.dart';
import 'package:blinx/presentation/feature/articles/ui/article_top_section/article_dark_gradient_overlay.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_bar/blinx_app_bar.dart';
import 'package:blinx/presentation/widgets/app_network_image.dart';
import 'package:blinx/presentation/widgets/overlay_while_scrolling_up.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ArticleScreen extends StatefulWidget {
  const ArticleScreen({super.key, required this.article, this.tag=''});
  final Article article;
  final String tag;

  @override
  State<ArticleScreen> createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  late final ScrollController _scrollController = ScrollController();
  late VideoPlayerController? videoPlayerController = widget.article.hasVideo
      ? addVid(
      'https://edge.api.brightcove.com/playback/v1/accounts/6314458267001/videos/${widget.article.videoId}/master.m3u8?bcov_auth=eyJhbGciOiJSUzI1NiJ9.eyJhY2NpZCI6IjYzMTQ0NTgyNjcwMDEiLCJpYXQiOjE2Nzg3ODE5NDYsImV4cCI6NDA3MDg5ODA2MX0.DtQV2jIiQ4ipxTJzBg2w1lBdev6CJGRUBzldtUA7_0Ewl0jcVm_ErsOPAwOHV9r3ddy2lutT15MHMjyoVOG9gvP9919kqv40BAOBZJzcehz3MsYWWh4JDWhKDtBh2atRmeh4daYhNXqgmMeE9cioKycV_WEt7PexTE6ztMumdkh3rYDm4pdvpEvWZc1tN0K4ff91OM2oWZb8SRlVEJnDIU6exDfd6pUNZd80IoSVRKvHexFbX-IOMzK3bAvPf3l9X6c9ns70me08-ng9WyKmcuUXkeyDbS55OrG0b2v2VavryOBbwhU91hVYV0QokowOqO0fv0Au13NWpMrNQnSNuw'
  ):null;

  VideoPlayerController addVid(String st) {
    var vp = VideoPlayerController.network(
      st,
    )
      ..setVolume(1.0)
      ..setLooping(true)
      ..initialize().then((value) {
        setState(() {});
      });
    vp.play();
    return vp;
  }
  @override
  void dispose() {
    videoPlayerController?.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BlinxAppBar.home(),
      body: Stack(
        children: [

          /// Background Dimming feature while scrolling
          /// Only available for Template 3
          if (widget.article.isTemplate3)
            Container(color: context.colors.black),
          if (widget.article.isTemplate3)
            OverlayWhileScrollingUp(
              scrollController: _scrollController,
              child: ArticleDarkGradientOverlay(
                stops: const [0, 0.1, 0.3, 1],
                child: widget.article.hasVideo?AbsorbPointer(
                  child: videoPlayerController != null &&
                      videoPlayerController!.value.isInitialized? AspectRatio(
                        aspectRatio: videoPlayerController!
                            .value
                            .aspectRatio,
                        child: VideoPlayer(
                          videoPlayerController!,
                        ),
                      ):const SizedBox(),
                ):AppNetworkImage(
                        imageUrl: widget.article.mobileArticle,
                        height: MediaQuery.of(context).size.height,
                        fit: BoxFit.cover,
                      ),
              ),
            ),

          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            controller: _scrollController,
            child: ArticleBody(
              article: widget.article,
              tag: widget.tag
            ),
          ),

        ],
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cached_video_player/cached_video_player.dart';
import '../../ui/static_video_component.dart';

class FullScreen extends StatefulWidget {
  const FullScreen({super.key, required this.videoId, this.isVertical=false});
  final String videoId;
  final bool isVertical;

  @override
  State<StatefulWidget> createState() => _FullScreen();
}

class _FullScreen extends State<FullScreen> {
  CachedVideoPlayerController? videoPlayerController;

  @override
  void initState() {
    super.initState();

    if(!widget.isVertical) SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight]);

    videoPlayerController = CachedVideoPlayerController.network(
      'https://edge.api.brightcove.com/playback/v1/accounts/6314458267001/videos/${widget.videoId}/master.m3u8?bcov_auth=eyJhbGciOiJSUzI1NiJ9.eyJhY2NpZCI6IjYzMTQ0NTgyNjcwMDEiLCJpYXQiOjE2Nzg3ODE5NDYsImV4cCI6NDA3MDg5ODA2MX0.DtQV2jIiQ4ipxTJzBg2w1lBdev6CJGRUBzldtUA7_0Ewl0jcVm_ErsOPAwOHV9r3ddy2lutT15MHMjyoVOG9gvP9919kqv40BAOBZJzcehz3MsYWWh4JDWhKDtBh2atRmeh4daYhNXqgmMeE9cioKycV_WEt7PexTE6ztMumdkh3rYDm4pdvpEvWZc1tN0K4ff91OM2oWZb8SRlVEJnDIU6exDfd6pUNZd80IoSVRKvHexFbX-IOMzK3bAvPf3l9X6c9ns70me08-ng9WyKmcuUXkeyDbS55OrG0b2v2VavryOBbwhU91hVYV0QokowOqO0fv0Au13NWpMrNQnSNuw',
    )
      ..setLooping(true)
      ..initialize().then((value) {
        setState(() {});
      });
    videoPlayerController!.play();
  }

  @override
  void dispose() {
    super.dispose();
    videoPlayerController?.dispose();
  }

  void exit() {

    if(!widget.isVertical) SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    context.router.navigateBack();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
         exit();
        return false;
      },
      child: Material(
        color: Colors.black,
        child:
          Stack(
            children: [

              if (videoPlayerController != null && videoPlayerController!.value.isInitialized) ...[
                Positioned(
                  child: SizedBox(
                    height: widget.isVertical?null:300,
                    width: double.infinity,
                    child: AbsorbPointer(
                      child: Center(
                        child: AspectRatio(
                          aspectRatio: videoPlayerController!.value.aspectRatio,
                          child: CachedVideoPlayer(
                            videoPlayerController!,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                Positioned(
                    left: -16,
                    right: -16,
                    bottom: 0,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(
                          height: 12,
                        ),
                        Directionality(
                          textDirection: TextDirection.ltr,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                            ),
                            clipBehavior: Clip.hardEdge,
                            child: VideoPlayerControls(
                              controller: videoPlayerController!,
                              videoId: widget.videoId,
                              isVertical: widget.isVertical,
                              exit: ()=>exit(),
                            ),
                          ),
                        ),
                      ],
                    )),

              ],

            ],
          ),
      ),
    );
  }
}

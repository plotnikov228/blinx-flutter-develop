import 'package:auto_route/auto_route.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:cached_video_player/cached_video_player.dart';
import 'package:flutter/material.dart';

import '../../../../../routes/router.gr.dart';

class StaticVideoComponent extends StatefulWidget {
  const StaticVideoComponent(
      {super.key,
      required this.videoId,
      this.isVertical = false,
      this.ismuted = false,
      this.autoPlay = false,
      this.aspectRatio = 16 / 9});
  final String videoId;
  final bool isVertical;
  final bool ismuted;
  final bool autoPlay;
  final double? aspectRatio;

  @override
  State<StatefulWidget> createState() => _StaticVideoComponent();
}

class _StaticVideoComponent extends State<StaticVideoComponent> {
  var started = false;
  CachedVideoPlayerController? videoPlayerController;

  @override
  void initState() {
    super.initState();
    videoPlayerController = CachedVideoPlayerController.network(
      'https://edge.api.brightcove.com/playback/v1/accounts/6314458267001/videos/${widget.videoId}/master.m3u8?bcov_auth=eyJhbGciOiJSUzI1NiJ9.eyJhY2NpZCI6IjYzMTQ0NTgyNjcwMDEiLCJpYXQiOjE2Nzg3ODE5NDYsImV4cCI6NDA3MDg5ODA2MX0.DtQV2jIiQ4ipxTJzBg2w1lBdev6CJGRUBzldtUA7_0Ewl0jcVm_ErsOPAwOHV9r3ddy2lutT15MHMjyoVOG9gvP9919kqv40BAOBZJzcehz3MsYWWh4JDWhKDtBh2atRmeh4daYhNXqgmMeE9cioKycV_WEt7PexTE6ztMumdkh3rYDm4pdvpEvWZc1tN0K4ff91OM2oWZb8SRlVEJnDIU6exDfd6pUNZd80IoSVRKvHexFbX-IOMzK3bAvPf3l9X6c9ns70me08-ng9WyKmcuUXkeyDbS55OrG0b2v2VavryOBbwhU91hVYV0QokowOqO0fv0Au13NWpMrNQnSNuw',
    )
      ..setLooping(true)
      ..setVolume(widget.ismuted ? 0.0 : 1.0)
      ..initialize().then((value) {
        setState(() {});
      });

    if (widget.autoPlay) {
      started = true;
      videoPlayerController!.play();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (videoPlayerController != null &&
            videoPlayerController!.value.isInitialized) ...[
          Positioned(
            child: SizedBox(
              height: (MediaQuery.of(context).size.width - 32) /
                  widget.aspectRatio!,
              width: double.infinity,
              child: AbsorbPointer(
                child: Center(
                  child: AspectRatio(
                    aspectRatio: widget.aspectRatio!,
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
                      ),
                    ),
                  ),
                ],
              )),
          if (!started)
            Positioned.fill(
                child: GestureDetector(
              onTap: () {
                videoPlayerController!.play();

                setState(() {
                  started = true;
                });
              },
              child: Container(
                color: Colors.transparent,
                child: Center(
                  child: Opacity(
                    opacity: 0.75,
                    child: Container(
                      height: 90,
                      width: 90,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black),
                      child: Center(
                        child: Assets.icons.play.svg(),
                      ),
                    ),
                  ),
                ),
              ),
            ))
        ],
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    videoPlayerController?.dispose();
  }
}

class VideoPlayerControls extends StatefulWidget {
  const VideoPlayerControls(
      {super.key,
      required this.controller,
      required this.videoId,
      this.isVertical = false,
      this.exit});
  final CachedVideoPlayerController controller;
  final String videoId;
  final bool isVertical;
  final Function? exit;

  @override
  State<VideoPlayerControls> createState() => _VideoPlayerControlsState();
}

class _VideoPlayerControlsState extends State<VideoPlayerControls> {
  CachedVideoPlayerController get controller => widget.controller;

  String _printDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    var twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    var twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return '${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds';
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<CachedVideoPlayerValue>(
      valueListenable: controller,
      builder: (context, value, child) {
        if (!value.isInitialized) {
          return Container();
        }
        return SizedBox(
          height: 120,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                right: 0,
                bottom: -20,
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: FractionalOffset.bottomCenter,
                      end: FractionalOffset.topCenter,
                      stops: const [0, .75, 1.0],
                      colors: [
                        Colors.black.withOpacity(.95),
                        Colors.black.withOpacity(.4),
                        Colors.transparent,
                      ],
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 24, right: 22),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(_printDuration(value.position)),
                            Text(_printDuration(value.duration)),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      VideoProgressIndicator(controller),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        child: Row(
                          children: [
                            IconButton(
                              icon: Icon(value.isPlaying
                                  ? Icons.pause
                                  : Icons.play_arrow),
                              onPressed: () {
                                if (value.isPlaying) {
                                  controller.pause();
                                } else {
                                  try {
                                    controller.play();
                                  } catch (e) {
                                    controller.seekTo(Duration.zero);
                                  }
                                }
                              },
                            ),
                            IconButton(
                              icon: Icon(value.volume == 0
                                  ? Icons.volume_off
                                  : Icons.volume_up),
                              onPressed: () => value.volume == 0
                                  ? controller.setVolume(1)
                                  : controller.setVolume(0),
                            ),
                            const Spacer(),
                            IconButton(
                                icon: Icon(widget.exit != null
                                    ? Icons.fullscreen_exit
                                    : Icons.fullscreen),
                                onPressed: widget.exit != null
                                    ? () => widget.exit!()
                                    : () {
                                        controller.pause();

                                        context.router.push(
                                          FullScreenRoute(
                                            videoId: widget.videoId,
                                            isVertical: widget.isVertical,
                                          ),
                                        );
                                      }),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class VideoProgressIndicator extends StatefulWidget {
  const VideoProgressIndicator(this.controller,
      {Key? key, this.forMoments = false})
      : super(key: key);
  final CachedVideoPlayerController controller;
  final bool forMoments;

  @override
  State<VideoProgressIndicator> createState() => _VideoProgressIndicatorState();
}

class _VideoProgressIndicatorState extends State<VideoProgressIndicator> {
  double? _value;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<CachedVideoPlayerValue>(
      valueListenable: widget.controller,
      builder: (context, value, child) {
        final isInitialized = widget.controller.value.isInitialized;
        final duration = value.duration.inMilliseconds.toDouble();
        final currentValue = _value ?? value.position.inMilliseconds.toDouble();

        try {
          return LayoutBuilder(
            builder: (context, constraints) {
              return SizedBox(
                height: 8,
                width: constraints.maxWidth,
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    trackHeight: 3,
                    thumbShape: RoundSliderThumbShape(
                      enabledThumbRadius: widget.forMoments ? 0 : 8,
                    ),
                    thumbColor: Colors.white,
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: widget.forMoments
                        ? Colors.white38
                        : const Color(0xFFB9B9B9),
                    trackShape: const RectangularSliderTrackShape(),
                  ),
                  child: IgnorePointer(
                    ignoring: !isInitialized,
                    child: Slider(
                      min: 0.0,
                      max: duration,
                      value: currentValue,
                      onChanged: (value) => setState(() => _value = value),
                      onChangeStart: (value) => setState(() => _value = value),
                      onChangeEnd: (value) {
                        _value = null;

                        widget.controller
                            .seekTo(Duration(milliseconds: value.toInt()));
                      },
                    ),
                  ),
                ),
              );
            },
          );
        } catch (e) {
          return const SizedBox();
        }
      },
    );
  }
}

import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/domain/entities/storyteller_moments.dart';
import 'package:blinx/domain/preferences/app_preferences.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/presentation/feature/home/reels_details/cubit/article_like_cubit.dart';
import 'package:blinx/presentation/feature/home/reels_details/cubit/article_like_state.dart';
import 'package:blinx/presentation/feature/moments/cubit/moments_cubit.dart';
import 'package:blinx/presentation/resources/app_colors.dart';
import 'package:blinx/presentation/utils/date_formatter.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cached_video_player/cached_video_player.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:wakelock/wakelock.dart';

import '../../../articles/ui/dynamic_templating/ui/static_video_component.dart' as lm;

class MomentsInsideBody extends StatefulWidget {
  const MomentsInsideBody({super.key,
    required this.moment,
  });
  final StorytellerMoments moment;

  @override
  State<MomentsInsideBody> createState() => _MomentsInsideBodyState();
}

class _MomentsInsideBodyState extends State<MomentsInsideBody> {
  PageController pController=PageController();
  int _currentIndex=0;
  List<CachedVideoPlayerController?> vpControllers=[];

  @override
  void initState() {
    super.initState();
    init();
  }

  void init() {
    Wakelock.enable();
    pController=PageController();

    if(vpControllers.isNotEmpty) {
      for (var element in vpControllers) {
        element!.dispose();
      }
    }
    vpControllers = [];
    _currentIndex=0;
    var i = 0;

    for(var moment in widget.moment.moments) {
      vpControllers.add(addVid(
          'https://edge.api.brightcove.com/playback/v1/accounts/6314458267001/videos/${moment.videoId}/master.m3u8?bcov_auth=eyJhbGciOiJSUzI1NiJ9.eyJhY2NpZCI6IjYzMTQ0NTgyNjcwMDEiLCJpYXQiOjE2Nzg3ODE5NDYsImV4cCI6NDA3MDg5ODA2MX0.DtQV2jIiQ4ipxTJzBg2w1lBdev6CJGRUBzldtUA7_0Ewl0jcVm_ErsOPAwOHV9r3ddy2lutT15MHMjyoVOG9gvP9919kqv40BAOBZJzcehz3MsYWWh4JDWhKDtBh2atRmeh4daYhNXqgmMeE9cioKycV_WEt7PexTE6ztMumdkh3rYDm4pdvpEvWZc1tN0K4ff91OM2oWZb8SRlVEJnDIU6exDfd6pUNZd80IoSVRKvHexFbX-IOMzK3bAvPf3l9X6c9ns70me08-ng9WyKmcuUXkeyDbS55OrG0b2v2VavryOBbwhU91hVYV0QokowOqO0fv0Au13NWpMrNQnSNuw',
          i,auto: i == 0));
      i++;
    }
  }

  @override
  void didUpdateWidget(covariant MomentsInsideBody oldWidget) {
    super.didUpdateWidget(oldWidget);
    init();
  }

  @override
  void dispose() {
    pController.dispose();
    Wakelock.disable();

    for (var element in vpControllers) {
      try {
        element!.dispose();
      } catch (e) {}
    }
    super.dispose();
  }

  CachedVideoPlayerController addVid(String st, int pos, {bool auto = false}) {
    var vp = CachedVideoPlayerController.network(
      st,
    )
      ..initialize().then((value) {
        setState(() {});
      });

    vp.addListener(() {

      if(vp.value.isInitialized&&vp.value.position == vp.value.duration) {

        if(pos<widget.moment.moments.length-1) {
          pController.animateToPage(pos+1, duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
        } else {
          context.read<MomentsCubit>().playNextMoment();
        }
      } else if(vp.value.isInitialized&&vp.value.position.inSeconds==1) {

        if(!widget.moment.moments[pos].seenByCurrentUser) context.read<MomentsCubit>().seen(widget.moment.moments[pos]);
      }
    });
    if (auto) vp.play();
    return vp;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Positioned.fill(
          top: 120,
          child: PageView.builder(
            physics: const BouncingScrollPhysics(),
            controller: pController,
            itemCount: widget.moment.moments.length,
            itemBuilder: (context, index) {
              return vpControllers.isNotEmpty&&vpControllers[index]!=null&&vpControllers[index]!.value.isInitialized?IgnorePointer(
                child: AspectRatio(
                aspectRatio: vpControllers[index]!
                  .value
                  .aspectRatio,
                child: CachedVideoPlayer(
                vpControllers[index]!,
                ),
              ),
              ):const SizedBox();
            },
            onPageChanged: (e) {
              vpControllers[_currentIndex]!.pause();
              _currentIndex = e;
              vpControllers[_currentIndex]!.play();

              setState(() { });
            },
          ),
        ),

        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 120,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.transparent,
                context.colors.black,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        ),

        Positioned(
          bottom: 41,
          left: 16,
          right: 16,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              Directionality(
                textDirection: injector.get<AppPreferences>().getLanguage=='ar'?TextDirection.rtl:TextDirection.ltr,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    BlocProvider(
                      create: (_) => injector<ArticlLikeCubit>()..get(widget.moment.moments[_currentIndex].path),
                      child: BlocBuilder<ArticlLikeCubit, ArticlLikeState>(
                        builder: (context, likestate) {

                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              AppText.body(
                                widget.moment.moments[_currentIndex].publishDate.reelsFormat(context),
                                color: context.colors.greyText,
                              ),
                              const Spacer(),

                              GestureDetector(
                                  onTap: () => context
                                      .read<ArticlLikeCubit>()
                                      .likeOrUnlikeReel(
                                      Article(path: widget.moment.moments[_currentIndex].path, id: '', title: ''),likestate.isLiked, context),
                                  child: Column(
                                    children: [
                                      likestate.isLiked
                                          ? Assets.icons.heartFilled.svg(width: 20)
                                          : Assets.icons.heartOutlined.svg(width: 20),
                                      const SizedBox(
                                        height: 8,
                                      ),

                                      Text(likestate.totalLikes.toString(),style: const TextStyle(
                                          color: Colors.white,fontSize: 10, fontWeight: FontWeight.w500
                                      ),)

                                    ],
                                  )),

                              /*Padding(
                                  padding: const EdgeInsets.only(right: 16,),
                                  child: GestureDetector(
                                    //onTap: context.read<MomentsCubit>().likeOrUnlikeMoment,
                                    child: Assets.icons.heartOutlined.svg(),
                                  ),
                                ),*/
                            ],
                          );

                        },
                      ),
                    ),

                    const SizedBox(height: 16,),

                  ],
                ),
              ),

              customProgress(),

            ],
          ),
        ),

      ],
    );
  }

  Widget customProgress() {
    var y=-1;
    return SizedBox(
      height: 3,
      child: Row(
        children: widget.moment.moments.map((e) {
          y++;
          return Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                color: _currentIndex==y?Colors.transparent:(_currentIndex<y?Colors.white38:Colors.white),
                borderRadius: BorderRadius.circular(4),
              ),
              child: _currentIndex!=y?null:Stack(
                children: [
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: -24,
                    right: -24,
                    child: lm.VideoProgressIndicator(
                      vpControllers[y]!,
                      forMoments: true,
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

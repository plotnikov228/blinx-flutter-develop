import 'package:auto_route/auto_route.dart';
import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/domain/preferences/app_preferences.dart';
import 'package:blinx/domain/preferences/auth_preferences.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:blinx/presentation/feature/home/cubit/follow_story_teller_cubit.dart';
import 'package:blinx/presentation/feature/home/cubit/follow_story_teller_state.dart';
import 'package:blinx/presentation/feature/home/cubit/get_story_teller_cubit.dart';
import 'package:blinx/presentation/feature/home/cubit/home_ab_cubit.dart';
import 'package:blinx/presentation/feature/home/home_feed/top_stories_section/top_stories_action_sheet.dart';
import 'package:blinx/presentation/feature/home/reels/cubit/reels_cubit.dart';
import 'package:blinx/presentation/feature/home/reels_details/cubit/reel_details_cubit.dart';
import 'package:blinx/presentation/routes/app_navigator.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:blinx/presentation/widgets/bottom_sheet/app_bottom_sheet.dart';
import 'package:blinx/presentation/widgets/snackbar/app_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_plus/share_plus.dart';
import 'package:video_player/video_player.dart';
import 'package:wakelock/wakelock.dart';

import '../../../widgets/app_network_image.dart';
import 'cubit/article_like_cubit.dart';
import 'cubit/article_like_state.dart';
import 'ui/action_button_widget.dart';
import 'ui/my_video_progress_indicator.dart';

class ReelsDetailsScreen extends StatefulWidget {
  ReelsDetailsScreen(
    this.articles, {
    Key? key,
    this.doPop = true,
    required this.selectedArticle,
    this.isMute = false,
  }) : super(key: key);

  final Article selectedArticle;
  final List<Article> articles;
  final bool doPop;
  bool isMute;

  @override
  State<ReelsDetailsScreen> createState() => _ReelsDetailsScreenState();
}

class _ReelsDetailsScreenState extends State<ReelsDetailsScreen>
    with SingleTickerProviderStateMixin {
  late final _animationController;
  late final _animation;

  late int _currentIndex = widget.articles.indexOf(widget.selectedArticle);
  late PageController pController;
  List<VideoPlayerController?> vpControllers = [];
  bool isPaused = false;

  bool isInhighlight = false;
  bool expendText = false;
  bool? isMute;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
    _animation = Tween<double>(
      begin: 1.0,
      end: 1.3,
    ).animate(_animationController);
    isMute = widget.isMute;
    pController = PageController(initialPage: _currentIndex);
    var i = 0;
    Wakelock.enable();
    for (var element in widget.articles) {
      if (i == _currentIndex ||
          i == _currentIndex + 1 ||
          i == _currentIndex + 2 ||
          i == _currentIndex - 2 ||
          i == _currentIndex - 1) {
        vpControllers.add(addVid(
            'https://edge.api.brightcove.com/playback/v1/accounts/6314458267001/videos/${element.videoId}/master.m3u8?bcov_auth=eyJhbGciOiJSUzI1NiJ9.eyJhY2NpZCI6IjYzMTQ0NTgyNjcwMDEiLCJpYXQiOjE2Nzg3ODE5NDYsImV4cCI6NDA3MDg5ODA2MX0.DtQV2jIiQ4ipxTJzBg2w1lBdev6CJGRUBzldtUA7_0Ewl0jcVm_ErsOPAwOHV9r3ddy2lutT15MHMjyoVOG9gvP9919kqv40BAOBZJzcehz3MsYWWh4JDWhKDtBh2atRmeh4daYhNXqgmMeE9cioKycV_WEt7PexTE6ztMumdkh3rYDm4pdvpEvWZc1tN0K4ff91OM2oWZb8SRlVEJnDIU6exDfd6pUNZd80IoSVRKvHexFbX-IOMzK3bAvPf3l9X6c9ns70me08-ng9WyKmcuUXkeyDbS55OrG0b2v2VavryOBbwhU91hVYV0QokowOqO0fv0Au13NWpMrNQnSNuw',
            i,
            auto: i == _currentIndex));
      } else {
        vpControllers.add(null);
      }
      i++;
    }
    interhighlight();
  }

  VideoPlayerController addVid(String st, int pos, {bool auto = false}) {
    var vp = VideoPlayerController.network(
      st,
    )
      ..setVolume(isMute! ? 0.0 : 1.0)
      ..initialize().then((value) {
        setState(() {});
      });

    if (injector.get<AppPreferences>().isAutoLoop) {
      vp.setLooping(true);
    } else {
      vp.addListener(() {
        if (vp.value.isInitialized && vp.value.position == vp.value.duration) {
          pController.animateToPage(pos + 1,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn);
        }
      });
    }

    if (auto) vp.play();
    return vp;
  }

  @override
  void dispose() {
    pController.dispose();
    _animationController.dispose();
    Wakelock.disable();
    for (var element in vpControllers) {
      try {
        element!.dispose();
      } catch (e) {}
    }
    super.dispose();
  }

  void interhighlight() {
    Future.delayed(const Duration(seconds: 3), () {
      try {
        setState(() {
          isInhighlight = true;
        });
      } catch (e) {}
    });
  }

  Widget seeMore(String st, context) {
    final span = TextSpan(
      text: st,
      style: const TextStyle(
          color: Colors.white, fontSize: 16, fontWeight: FontWeight.w300),
    );
    final tp =
        TextPainter(text: span, maxLines: 2, textDirection: TextDirection.rtl);
    tp.layout(
        maxWidth: MediaQuery.of(context).size.width -
            200); // equals the parent screen width

    if (tp.didExceedMaxLines) {
      return const Text(
        'عرض المزيد',
        style: TextStyle(
            color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w500),
      );
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    if (widget.articles.length != vpControllers.length &&
        widget.articles.length > vpControllers.length) {
      List.generate(widget.articles.length - vpControllers.length,
          (index) => vpControllers.add(null));
    }
    final i18n = context.localization.activity;

    String _getDaysText(DateTime date) {
      final difference = DateTime.now().difference(date).inDays;
      final locale = context.localization;
      if (difference <= 30) {
        if (difference == 1)
          return '$difference ${locale.preference.day} ${locale.dates.ago}';
        return '$difference ${locale.dates.days} ${locale.dates.ago}';
      }
      return '${locale.nav.more} ${locale.dates.month} ${locale.dates.ago}';
    }

    return BlocProvider<ReelDetailsCubit>(
      create: (_) => injector()..setData(widget.articles),
      child: WillPopScope(
        onWillPop: () async {
          context.read<HomeAbCubit>().update(true);

          if (widget.doPop) {
            Navigator.pop(context);
          } else {
            context.read<ReelsCubit>().update(null, context);
            context.read<ReelsCubit>().loadReels(showShimmer: false);
          }
          return false;
        },
        child: Scaffold(
          body: Stack(
            children: [
              Positioned.fill(
                child: BlocBuilder<ReelDetailsCubit, ReelDetailsState>(
                  builder: (context, state) {
                    final articles = state.articles;
                    //context.read<ReelDetailsCubit>().setData(widget.articles);
                    return NotificationListener<ScrollNotification>(
                      onNotification: (scrollNotification) {
                        if (scrollNotification is ScrollEndNotification) {
                          setState(() {
                            isInhighlight = false;
                          });
                          interhighlight();
                        }
                        return true;
                      },
                      child: AnimatedBuilder(
                        builder: (context, _widget) => Transform.scale(
                          scale: _animation.value,
                          child: PageView.builder(
                            controller: pController,
                            itemCount: widget.articles.length,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) {
                              return BlocProvider(
                                create: (_) => injector<ArticlLikeCubit>()
                                  ..get(widget.articles[index].path),
                                child: BlocBuilder<ArticlLikeCubit,
                                    ArticlLikeState>(
                                  builder: (context, likestate) {
                                    return Stack(
                                      children: [
                                        if (vpControllers.isNotEmpty &&
                                            vpControllers[index] != null &&
                                            vpControllers[index]!
                                                .value
                                                .isInitialized)
                                          Positioned.fill(
                                            child: GestureDetector(
                                              onDoubleTap: injector
                                                          .get<
                                                              AuthPreferences>()
                                                          .isLoggedIn() &&
                                                      !widget.articles[index]
                                                          .isLiked
                                                  ? () => context
                                                      .read<ReelDetailsCubit>()
                                                      .likeOrUnlikeReel(
                                                          widget
                                                              .articles[index],
                                                          context)
                                                  : null,
                                              onTap: () {
                                                isPaused = !isPaused;

                                                if (isPaused) {
                                                  try {
                                                    vpControllers[
                                                            _currentIndex]!
                                                        .pause();
                                                  } catch (e) {}
                                                } else {
                                                  try {
                                                    vpControllers[
                                                            _currentIndex]!
                                                        .play();
                                                  } catch (e) {}
                                                }
                                                setState(() {
                                                  isInhighlight = false;
                                                });
                                                interhighlight();
                                              },
                                              child: AbsorbPointer(
                                                child: (MediaQueryData.fromWindow(
                                                                WidgetsBinding
                                                                    .instance
                                                                    .window)
                                                            .size
                                                            .width >
                                                        500.0)
                                                    ? Center(
                                                        child: AspectRatio(
                                                          aspectRatio: (9 / 16),
                                                          child: VideoPlayer(
                                                            vpControllers[
                                                                index]!,
                                                          ),
                                                        ),
                                                      )
                                                    : SizedBox(
                                                        height: double.infinity,
                                                        child: AspectRatio(
                                                          aspectRatio: (widget
                                                                  .articles[
                                                                      index]
                                                                  .media!
                                                                  .primaryImage
                                                                  .width! /
                                                              widget
                                                                  .articles[
                                                                      index]
                                                                  .media!
                                                                  .primaryImage
                                                                  .height!),
                                                          child: VideoPlayer(
                                                            vpControllers[
                                                                index]!,
                                                          ),
                                                        ),
                                                      ),
                                              ),
                                            ),
                                          ),
                                        Positioned(
                                            bottom: 0,
                                            child: IgnorePointer(
                                              child: Container(
                                                width: 15000,
                                                height: 353,
                                                decoration: const BoxDecoration(
                                                    gradient: LinearGradient(
                                                        colors: [
                                                      Color.fromRGBO(
                                                          0, 0, 0, 0.5),
                                                      Colors.transparent
                                                    ],
                                                        end:
                                                            Alignment.topCenter,
                                                        begin: Alignment
                                                            .bottomCenter)),
                                              ),
                                            )),
                                        Positioned(
                                            left: 0,
                                            right: 0,
                                            bottom: 0,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                AnimatedOpacity(
                                                  duration: const Duration(
                                                      milliseconds: 600),
                                                  opacity:
                                                      isInhighlight && !isPaused
                                                          ? 0
                                                          : 1,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          GestureDetector(
                                                            onTap: () {
                                                              setState(() {
                                                                isPaused =
                                                                true;
                                                              });

                                                              try {
                                                                vpControllers[
                                                                index]!
                                                                    .pause();
                                                              } catch (e) {}
                                                              context.router
                                                                  .push(
                                                                StoryTellerDetailsPageRoute(
                                                                  storyteller: articles[
                                                                  index]
                                                                      .storytellers!
                                                                      .first,
                                                                ),
                                                              );
                                                            },

                                                            child: Row(
                                                              children: [
                                                                const SizedBox(
                                                                  width: 25,
                                                                ),
                                                                ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              15),
                                                                  child: AppNetworkImage(
                                                                      height: 50,
                                                                      width: 50,
                                                                      imageUrl: widget
                                                                          .articles[
                                                                              index]
                                                                          .storytellers!
                                                                          .first
                                                                          .avatarImageUrl),
                                                                ),
                                                                const SizedBox(
                                                                  width: 8,
                                                                ),
                                                                SizedBox(
                                                                  height: 50,
                                                                  child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        widget
                                                                            .articles[index]
                                                                            .authorName,
                                                                        style:
                                                                            const TextStyle(
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        _getDaysText(widget
                                                                            .articles[index]
                                                                            .publishDate!),
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              12,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          color: Colors
                                                                              .white
                                                                              .withOpacity(0.5),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          GestureDetector(
                                                              onTap: () =>
                                                                  AppBottomSheet
                                                                      .showSheet(
                                                                    context,
                                                                    child:
                                                                        TopStoriesActionSheet(
                                                                      article: widget
                                                                              .articles[
                                                                          index],
                                                                    ),
                                                                  ),
                                                              child: Padding(
                                                                padding: const EdgeInsets.only(right: 25),
                                                                child: Assets
                                                                    .icons
                                                                    .moreVertical
                                                                    .svg(
                                                                  color: Colors.white.withOpacity(0.5),
                                                                        width:
                                                                            20),
                                                              )),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 8,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                    .only(
                                                                start: 25,
                                                                end: 50),
                                                        child: GestureDetector(
                                                          onTap: () {
                                                            setState(() {
                                                              expendText =
                                                                  !expendText;
                                                            });
                                                          },
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  widget
                                                                      .articles[
                                                                          index]
                                                                      .description,
                                                                  style:
                                                                      const TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                  ),
                                                                  maxLines:
                                                                      expendText
                                                                          ? null
                                                                          : 2),
                                                              if (!expendText)
                                                                seeMore(
                                                                    widget
                                                                        .articles[
                                                                            index]
                                                                        .description,
                                                                    context),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        height: 16,
                                                      ),
                                                      AnimatedOpacity(
                                                        duration:
                                                            const Duration(
                                                                milliseconds:
                                                                    600),
                                                        opacity:
                                                            isInhighlight &&
                                                                    !isPaused
                                                                ? 0
                                                                : 1,
                                                        child: Padding(
                                                          padding: const EdgeInsets.only(left: 25, right: 25),
                                                          child: Row(
                                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                BlocProvider(
                                                                  create: (_) =>
                                                                      injector<
                                                                          FollowStoryTellerCubit>(),
                                                                  child: BlocBuilder<
                                                                      FollowStoryTellerCubit,
                                                                      FollowStoryTellerState>(
                                                                    builder:
                                                                        (context,
                                                                            state2) {
                                                                          return ActionButtonWidget(onPressed: () {
                                                                            final _authPreferences =
                                                                            injector.get<AuthPreferences>();

                                                                            if (_authPreferences
                                                                                .isLoggedIn()) {
                                                                              if (!state
                                                                                  .status
                                                                                  .isLoading) {
                                                                                context.read<FollowStoryTellerCubit>().call(widget.articles[index].storytellers!.first, context,
                                                                                    f: (v) {
                                                                                      v
                                                                                          ? AppSnackBar.showSuccessMessage(
                                                                                        context,
                                                                                        title: context.localization.activity.followMessage,
                                                                                      )
                                                                                          : AppSnackBar.showSuccessMessage(
                                                                                        context,
                                                                                        title: context.localization.activity.unfollowMessage,
                                                                                      );
                                                                                      context.read<GetStoryTellerCubit>().update(widget.articles[index].storytellers!.first.path, v);
                                                                                    });
                                                                              }
                                                                            } else {
                                                                              context
                                                                                  .read<HomeAbCubit>()
                                                                                  .update(true);

                                                                              if (widget
                                                                                  .doPop) {
                                                                                Navigator.pop(context);
                                                                              } else {
                                                                                context.read<ReelsCubit>().update(null,
                                                                                    context);

                                                                                context.read<ReelsCubit>().loadReels(showShimmer: false);
                                                                              }
                                                                              context
                                                                                  .navigateToLoginScreen();
                                                                            }
                                                                          }, width: (size.width -100) / 4, child: (Color color) {
                                                                            return Text(
                                                                                (state2.status.isLoading)
                                                                                    ? '...'
                                                                                    : (widget.articles[index].storytellers!.first.followed ? i18n.unfollow : i18n.follow),
                                                                                style: TextStyle(
                                                                                color: color,
                                                                                fontSize: 10,
                                                                                fontWeight: FontWeight.w500));
                                                                          },
                                                                          isActive: true,
                                                                          );

                                                                    },
                                                                  ),
                                                                ),
                                                                const SizedBox(
                                                                  width: 14,
                                                                ),
                                                                ActionButtonWidget(onPressed: () {
                                                                  injector
                                                                      .get<
                                                                      AuthPreferences>()
                                                                      .isLoggedIn()
                                                                      ? () => context.read<ArticlLikeCubit>().likeOrUnlikeReel(
                                                                      widget.articles[
                                                                      index],
                                                                      likestate
                                                                          .isLiked,
                                                                      context)
                                                                      : () => context
                                                                      .navigateToLoginScreen();
                                                                }, child: (color) {
                                                                  return Row(
                                                                    children: [
                                                                      likestate
                                                                          .isLiked
                                                                          ? Assets.icons.heartFilled.svg(
                                                                          width:
                                                                          15)
                                                                          : Assets
                                                                          .icons
                                                                          .heartOutlined
                                                                          .svg(width: 15),
                                                                      const SizedBox(
                                                                        width: 8,
                                                                      ),
                                                                      Text(
                                                                        likestate
                                                                            .totalLikes
                                                                            .toString(),
                                                                        style: const TextStyle(
                                                                            color: Colors
                                                                                .white,
                                                                            fontSize:
                                                                            10,
                                                                            fontWeight:
                                                                            FontWeight.w500),
                                                                      )
                                                                    ],
                                                                  );
                                                                }, width: (size.width - 100) / 4),

                                                                const SizedBox(
                                                                  width: 14,
                                                                ),
                                                                ActionButtonWidget(onPressed: () {

                                                                }, child: (c) => Row(
                                                                  children: [
                                                                    Assets.icons
                                                                        .newComment
                                                                        .svg(
                                                                        width:
                                                                        15),
                                                                    const SizedBox(
                                                                      width: 8,
                                                                    ),
                                                                    const Text(
                                                                      '0',
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .white,
                                                                          fontSize:
                                                                          10,
                                                                          fontWeight:
                                                                          FontWeight.w500),
                                                                    )
                                                                  ],
                                                                ), width: (size.width - 100) / 4),
                                                                const SizedBox(
                                                                  width: 14,
                                                                ),
                                                                ActionButtonWidget(onPressed: () {
                                                                  Share.share(widget
                                                                      .articles[
                                                                  index]
                                                                      .articleWebUrl);
                                                                }, child: (c) => Assets
                                                                    .icons
                                                                    .newSend
                                                                    .svg(
                                                                    width:
                                                                    15), width: (size.width - 100) /4 )
                                                              ]),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Directionality(
                                                  textDirection:
                                                      TextDirection.ltr,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              2),
                                                    ),
                                                    clipBehavior: Clip.hardEdge,
                                                    child: SizedBox(
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width,
                                                        child: vpControllers[
                                                                    index] ==
                                                                null
                                                            ? const SizedBox(
                                                                height: 16,
                                                              )
                                                            : AbsorbPointer(
                                                                child: MyVideoProgressIndicator(
                                                                    widget
                                                                        .selectedArticle
                                                                        .videoLength,
                                                                    vpControllers[
                                                                        index]!))),
                                                  ),
                                                ),
                                              ],
                                            )),
                                        Positioned(
                                            left: 0,
                                            right: 0,
                                            bottom: 0,
                                            child: Directionality(
                                              textDirection: TextDirection.ltr,
                                              child: vpControllers[index] ==
                                                      null
                                                  ? const SizedBox()
                                                  : MyVideoProgressIndicator(
                                                      widget.selectedArticle
                                                          .videoLength,
                                                      vpControllers[index]!,
                                                      beTrans: true),
                                            )),
                                      ],
                                    );
                                  },
                                ),
                              );
                            },
                            onPageChanged: (e) {
                              if (e == widget.articles.length - 3) {
                                context.read<ReelsCubit>().loadMoreReels();
                              }

                              try {
                                vpControllers[_currentIndex]!.pause();
                              } catch (e) {}

                              if (e > _currentIndex) {
                                _animationController.forward().then(
                                    (value) => _animationController.reverse());

                                try {
                                  vpControllers[_currentIndex - 2]!.dispose();
                                } catch (e) {}
                                try {
                                  vpControllers[_currentIndex - 2] = null;
                                } catch (e) {}
                                try {
                                  vpControllers[_currentIndex + 3] = addVid(
                                      'https://edge.api.brightcove.com/playback/v1/accounts/6314458267001/videos/${widget.articles[_currentIndex + 3].videoId}/master.m3u8?bcov_auth=eyJhbGciOiJSUzI1NiJ9.eyJhY2NpZCI6IjYzMTQ0NTgyNjcwMDEiLCJpYXQiOjE2Nzg3ODE5NDYsImV4cCI6NDA3MDg5ODA2MX0.DtQV2jIiQ4ipxTJzBg2w1lBdev6CJGRUBzldtUA7_0Ewl0jcVm_ErsOPAwOHV9r3ddy2lutT15MHMjyoVOG9gvP9919kqv40BAOBZJzcehz3MsYWWh4JDWhKDtBh2atRmeh4daYhNXqgmMeE9cioKycV_WEt7PexTE6ztMumdkh3rYDm4pdvpEvWZc1tN0K4ff91OM2oWZb8SRlVEJnDIU6exDfd6pUNZd80IoSVRKvHexFbX-IOMzK3bAvPf3l9X6c9ns70me08-ng9WyKmcuUXkeyDbS55OrG0b2v2VavryOBbwhU91hVYV0QokowOqO0fv0Au13NWpMrNQnSNuw',
                                      _currentIndex + 3);
                                } catch (e) {}
                              } else {
                                try {
                                  vpControllers[_currentIndex + 2]!.dispose();
                                } catch (e) {}
                                try {
                                  vpControllers[_currentIndex + 2] = null;
                                } catch (e) {}
                                try {
                                  vpControllers[_currentIndex - 3] = addVid(
                                      'https://edge.api.brightcove.com/playback/v1/accounts/6314458267001/videos/${widget.articles[_currentIndex - 3].videoId}/master.m3u8?bcov_auth=eyJhbGciOiJSUzI1NiJ9.eyJhY2NpZCI6IjYzMTQ0NTgyNjcwMDEiLCJpYXQiOjE2Nzg3ODE5NDYsImV4cCI6NDA3MDg5ODA2MX0.DtQV2jIiQ4ipxTJzBg2w1lBdev6CJGRUBzldtUA7_0Ewl0jcVm_ErsOPAwOHV9r3ddy2lutT15MHMjyoVOG9gvP9919kqv40BAOBZJzcehz3MsYWWh4JDWhKDtBh2atRmeh4daYhNXqgmMeE9cioKycV_WEt7PexTE6ztMumdkh3rYDm4pdvpEvWZc1tN0K4ff91OM2oWZb8SRlVEJnDIU6exDfd6pUNZd80IoSVRKvHexFbX-IOMzK3bAvPf3l9X6c9ns70me08-ng9WyKmcuUXkeyDbS55OrG0b2v2VavryOBbwhU91hVYV0QokowOqO0fv0Au13NWpMrNQnSNuw',
                                      _currentIndex - 3);
                                } catch (e) {}
                              }

                              _currentIndex = e;

                              if (vpControllers[_currentIndex] == null) {
                                vpControllers[_currentIndex] = addVid(
                                    'https://edge.api.brightcove.com/playback/v1/accounts/6314458267001/videos/${widget.articles[_currentIndex].videoId}/master.m3u8?bcov_auth=eyJhbGciOiJSUzI1NiJ9.eyJhY2NpZCI6IjYzMTQ0NTgyNjcwMDEiLCJpYXQiOjE2Nzg3ODE5NDYsImV4cCI6NDA3MDg5ODA2MX0.DtQV2jIiQ4ipxTJzBg2w1lBdev6CJGRUBzldtUA7_0Ewl0jcVm_ErsOPAwOHV9r3ddy2lutT15MHMjyoVOG9gvP9919kqv40BAOBZJzcehz3MsYWWh4JDWhKDtBh2atRmeh4daYhNXqgmMeE9cioKycV_WEt7PexTE6ztMumdkh3rYDm4pdvpEvWZc1tN0K4ff91OM2oWZb8SRlVEJnDIU6exDfd6pUNZd80IoSVRKvHexFbX-IOMzK3bAvPf3l9X6c9ns70me08-ng9WyKmcuUXkeyDbS55OrG0b2v2VavryOBbwhU91hVYV0QokowOqO0fv0Au13NWpMrNQnSNuw',
                                    _currentIndex);
                              }

                              try {
                                vpControllers[_currentIndex]!.play();
                              } catch (e) {}

                              setState(() {
                                isPaused = false;
                                isInhighlight = false;
                                expendText = false;
                              });
                              interhighlight();
                            },
                          ),
                        ),
                        animation: _animation,
                      ),
                    );
                  },
                ),
              ),
              Positioned(
                  top: 0,
                  child: IgnorePointer(
                    child: Container(
                      width: 15000,
                      height: 181,
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                            Color.fromRGBO(0, 0, 0, 0.5),
                            Colors.transparent
                          ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)),
                    ),
                  )),
              Positioned(
                top: 0,
                left: 8,
                right: 8,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 600),
                  opacity: isInhighlight && !isPaused ? 0 : 1,
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              isMute = !isMute!;

                              for (var element in vpControllers) {
                                try {
                                  element!.setVolume(isMute! ? 0.0 : 1.0);
                                } catch (e) {}
                              }
                              setState(() {});
                            },
                            child: Container(
                              color: Colors.transparent,
                              padding: const EdgeInsets.all(8.0),
                              child: isMute!
                                  ? Assets.icons.newMute
                                      .svg(color: Colors.white, width: 20)
                                  : Assets.icons.newUnmut.svg(
                                      color: Colors.white,
                                      width: 20,
                                    ),
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          GestureDetector(
                            onTap: () {
                              isPaused = !isPaused;

                              if (isPaused) {
                                try {
                                  vpControllers[_currentIndex]!.pause();
                                } catch (e) {}
                              } else {
                                try {
                                  vpControllers[_currentIndex]!.play();
                                } catch (e) {}
                              }
                              setState(() {});
                            },
                            child: Container(
                              color: Colors.transparent,
                              padding: const EdgeInsets.all(8.0),
                              child: isPaused
                                  ? Assets.icons.newPlay
                                      .svg(color: Colors.white, width: 20)
                                  : Assets.icons.newPos.svg(
                                      color: Colors.white,
                                      width: 20,
                                    ),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              context.read<HomeAbCubit>().update(true);

                              if (widget.doPop) {
                                Navigator.pop(context);
                              } else {
                                context
                                    .read<ReelsCubit>()
                                    .update(null, context);
                                context
                                    .read<ReelsCubit>()
                                    .loadReels(showShimmer: false);
                              }
                            },
                            child: Container(
                              color: Colors.transparent,
                              padding: const EdgeInsets.all(8.0),
                              child:
                                  Assets.icons.close.svg(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

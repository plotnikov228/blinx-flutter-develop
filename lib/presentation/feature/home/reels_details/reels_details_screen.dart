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
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_plus/share_plus.dart';
import 'package:video_player/video_player.dart';
import 'package:wakelock/wakelock.dart';

import '../../../widgets/app_network_image.dart';
import '../reels/ui/omnidirectional_page_view/omnidirectional_page_view.dart';
import 'cubit/article_like_cubit.dart';
import 'cubit/article_like_state.dart';
import 'ui/action_button_widget.dart';
import 'ui/my_video_progress_indicator.dart';
import 'package:better_video_player/better_video_player.dart';

class ReelsDetailsScreen extends StatefulWidget {
  ReelsDetailsScreen(this.articles, {
    Key? key,
    this.doPop = true,
    required this.selectedArticle,
    this.isMute = false, this.currentIndex,
  }) : super(key: key);

  final int? currentIndex;
  final Article selectedArticle;
  final List<Article> articles;
  final bool doPop;
  bool isMute;

  @override
  State<ReelsDetailsScreen> createState() => _ReelsDetailsScreenState();
}

class _ReelsDetailsScreenState extends State<ReelsDetailsScreen>
    with SingleTickerProviderStateMixin {
  late int _currentIndex;
  List<Article> articles = [];
  List<List<Article>> articlesMatrix = [];
  late PageController pController;
  List<List<BetterVideoPlayerController?>> vpControllers = [];
  bool isPaused = false;

  bool isInhighlight = false;
  bool expendText = false;
  bool? isMute;

  int _currentRow = 1;
  int _currentColumn = 1;

  @override
  void initState() {
    super.initState();

    _currentRow = 1;
    _currentColumn = 1;

    vpControllers = [];
    articles = [];
    articlesMatrix = [];

    _currentIndex = widget.articles.map((e) => e.id).toList().indexOf(
        widget.selectedArticle.id);
    if(widget.currentIndex != null) _currentIndex = widget.currentIndex!;

    articles = widget.articles.getRange(0, widget.articles.length).toList();

    articles.removeAt(_currentIndex);
    articles.insert(4, widget.articles[_currentIndex]);
    setState(() {

    });
    isMute = widget.isMute;
    pController = PageController(initialPage: _currentIndex);

    var i = 0;
    Wakelock.enable();

    for (int i = 0; i < 3; i++) {
      vpControllers.add([]);
      articlesMatrix.add([]);
      for (int j = 0; j < 3; j++) {
        vpControllers[i].add(null);
      }
    }
    var row = 0;
    var column = 0;
    for (var element in articles) {
      if(!articlesMatrix.asMap().containsKey(row)) break;
      /*if (_indexInRange(
          _currentRow, _currentColumn, row, column, vpControllers)) {*/
        vpControllers[row][column] = addVid(
            'https://edge.api.brightcove.com/playback/v1/accounts/6314458267001/videos/${element
                .videoId}/master.m3u8?bcov_auth=eyJhbGciOiJSUzI1NiJ9.eyJhY2NpZCI6IjYzMTQ0NTgyNjcwMDEiLCJpYXQiOjE2Nzg3ODE5NDYsImV4cCI6NDA3MDg5ODA2MX0.DtQV2jIiQ4ipxTJzBg2w1lBdev6CJGRUBzldtUA7_0Ewl0jcVm_ErsOPAwOHV9r3ddy2lutT15MHMjyoVOG9gvP9919kqv40BAOBZJzcehz3MsYWWh4JDWhKDtBh2atRmeh4daYhNXqgmMeE9cioKycV_WEt7PexTE6ztMumdkh3rYDm4pdvpEvWZc1tN0K4ff91OM2oWZb8SRlVEJnDIU6exDfd6pUNZd80IoSVRKvHexFbX-IOMzK3bAvPf3l9X6c9ns70me08-ng9WyKmcuUXkeyDbS55OrG0b2v2VavryOBbwhU91hVYV0QokowOqO0fv0Au13NWpMrNQnSNuw',
            auto: row == _currentRow && column == _currentColumn);
      /*} else {
        vpControllers[row].add(null);
      }*/
      articlesMatrix[row].add(element);
      i++;
      column++;
      if (column == 3) {
        row++;
        column = 0;
      }
    }
    interhighlight();
  }

  String _getDaysText(DateTime date) {
    final difference = DateTime
        .now()
        .difference(date)
        .inDays;
    final locale = context.localization;
    if (difference <= 30) {
      if (difference == 1) {
        return '$difference ${locale.preference.day} ${locale.dates.ago}';
      }
      return '$difference ${locale.dates.days} ${locale.dates.ago}';
    }
    return '${locale.nav.more} ${locale.dates.month} ${locale.dates.ago}';
  }

  bool _indexInRange(int row, int column, int newRow, int newColumn,
      List<List<dynamic>> matrix) {
    // Определяем границы подматрицы 3x3
    var startRow = row - 1;
    var endRow = row + 1;
    var startColumn = column - 1;
    var endColumn = column + 1;
    var changedRow = false;
    var changedColumn = false;
    var additionalRow = 0;
    var additionalColumn = 0;
    if (startRow < 0) {
      startRow = 0;
      additionalRow = matrix.length;
      changedRow = true;
    }
    if (endRow > matrix.length) {
      endRow = matrix.length;
      changedRow = true;
      additionalRow = 0;
    }
    if (startColumn < 0) {
      startColumn = 0;
      additionalColumn = matrix[row]!.length;
      changedColumn = true;
    }
    if (endColumn > matrix[row]!.length) {
      endColumn = matrix[row]!.length;
      additionalColumn = 0;
      changedColumn = true;
    }
    var rowInRange = false;
    var columnInRange = false;
    if ((changedRow && additionalRow == newRow)) {
      rowInRange = true;
    }
    if (!rowInRange) {
      if (startRow <= newRow && endRow >= newRow) {
        rowInRange = true;
      }
    }

    if ((changedColumn && additionalColumn == newColumn)) {
      columnInRange = true;
    }
    if (!columnInRange) {
      if (startColumn <= newColumn && endColumn >= newColumn) {
        columnInRange = true;
      }
    }

    return rowInRange && columnInRange;
  }

  BetterVideoPlayerController addVid(String st, {bool auto = false}) {
    var vp = BetterVideoPlayerController()
      ..setLooping(auto)
      ..setVolume(isMute! ? 0.0 : 1.0);
      vp.addListener(() {
        if (vp.value.hasError ) {
          vp.restart();
        }
        setState(() {

        });
      });

    if(auto) vp.play();

    /*var vp = VideoPlayerController.network(
      st,
    );
    Future.wait([vp.initialize().then((value) {
    })]);
      vp..setVolume(isMute! ? 0.0 : 1.0)..addListener(() {setState(() {

      });});
    


    if (injector.get<AppPreferences>().isAutoLoop) {
      vp.setLooping(true);
    } else {
      vp.addListener(() {
        if (vp.value.isInitialized && vp.value.position == vp.value.duration) {
          */ /*pController.animateToPage(pos + 1,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn);*/ /*
        }
      });
    }

    if (auto) vp.play();*/
    return vp;
  }

  @override
  void dispose() {
    super.dispose();
    pController.dispose();
    Wakelock.disable();
    for (var element in vpControllers) {
      for (var e in element) {
        try {
          e!.dispose();
        } catch (e) {}
      }
    }
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
        maxWidth: MediaQuery
            .of(context)
            .size
            .width -
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

  List<List<Widget>> widgets = [];

  List<List<Widget>> _getWidgetMatrix(List<List<dynamic>> matrix,
      Widget Function(int, int) item) {
    final widgetMatrix = <List<Widget>>[];

    for (var i = 0; i < matrix.length; i++) {
      widgetMatrix.add([]);
      for (var j = 0; j < matrix[i].length; j++) {
        widgetMatrix[i].add(item(i, j));
      }
    }
    return widgetMatrix;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    final i18n = context.localization.activity;

    /*if (widget.articles.length != vpControllers.length &&
        widget.articles.length > vpControllers.length) {
      List.generate(widget.articles.length - vpControllers.length,
          (index) => vpControllers.add(null));
    }*/

    return BlocProvider<ReelDetailsCubit>(
      create: (_) =>
      injector()
        ..setData(articles),
      child: WillPopScope(
        onWillPop: () async {
          context.read<HomeAbCubit>().update(true);

          if (widget.doPop) {
            Navigator.pop(context);
          } else {
            context.read<ReelsCubit>().update(null, context, index:_currentIndex);
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
                    widgets = _getWidgetMatrix(articlesMatrix, (r, c) {
                      return BlocProvider(
                        create: (_) =>
                        injector<ArticlLikeCubit>()
                          ..get(articlesMatrix[r][c].path),
                        child: BlocBuilder<ArticlLikeCubit, ArticlLikeState>(
                          builder: (context, likestate) {
                            return SizedBox(
                              height: size.height,
                              width: size.width,
                              child: Stack(
                                children: [
                                  if (vpControllers.isNotEmpty &&
                                      vpControllers[r][c] != null)
                                    Positioned.fill(
                                      child: GestureDetector(
                                        onDoubleTap: injector
                                            .get<AuthPreferences>()
                                            .isLoggedIn() &&
                                            !articlesMatrix[r][c].isLiked
                                            ? () =>
                                            context
                                                .read<ReelDetailsCubit>()
                                                .likeOrUnlikeReel(
                                                articlesMatrix[r][c],
                                                context)
                                            : null,
                                        onTap: () {
                                          isPaused = !isPaused;

                                          if (isPaused) {
                                            try {
                                              vpControllers[r][c]!.pause();
                                            } catch (e) {}
                                          } else {
                                            try {
                                              vpControllers[r][c]!.play();
                                            } catch (e) {}
                                          }
                                          setState(() {
                                            isInhighlight = false;
                                          });
                                          interhighlight();
                                        },
                                        child: AbsorbPointer(
                                          child:
                                          (/*MediaQueryData.fromWindow(
                                              WidgetsBinding
                                                  .instance
                                                  .window)
                                              .*/
                                              size.width > 500.0)
                                              ? Center(
                                            child: AspectRatio(
                                              aspectRatio: (9 / 16),
                                              child: IgnorePointer(
                                                ignoring:  vpControllers[r][c]!.videoPlayerValue == null ? false : vpControllers[r][c]!.videoPlayerValue!.isPlaying,
                                                child: BetterVideoPlayer(
                                                  isFullScreen: true,
                                                  dataSource: BetterVideoPlayerDataSource.network('https://edge.api.brightcove.com/playback/v1/accounts/6314458267001/videos/${articlesMatrix[r][c]
                                                      .videoId}/master.m3u8?bcov_auth=eyJhbGciOiJSUzI1NiJ9.eyJhY2NpZCI6IjYzMTQ0NTgyNjcwMDEiLCJpYXQiOjE2Nzg3ODE5NDYsImV4cCI6NDA3MDg5ODA2MX0.DtQV2jIiQ4ipxTJzBg2w1lBdev6CJGRUBzldtUA7_0Ewl0jcVm_ErsOPAwOHV9r3ddy2lutT15MHMjyoVOG9gvP9919kqv40BAOBZJzcehz3MsYWWh4JDWhKDtBh2atRmeh4daYhNXqgmMeE9cioKycV_WEt7PexTE6ztMumdkh3rYDm4pdvpEvWZc1tN0K4ff91OM2oWZb8SRlVEJnDIU6exDfd6pUNZd80IoSVRKvHexFbX-IOMzK3bAvPf3l9X6c9ns70me08-ng9WyKmcuUXkeyDbS55OrG0b2v2VavryOBbwhU91hVYV0QokowOqO0fv0Au13NWpMrNQnSNuw'),
                                                 controller: vpControllers[r][c]!, configuration: BetterVideoPlayerConfiguration(
                                                  controls: BetterVideoPlayerControls(isFullScreen: true,),

                                                  looping: true,
                                                  autoPlay: false,
                                                  autoPlayWhenResume: true,
                                                  placeholder: CachedNetworkImage(imageUrl: articlesMatrix[r][c].imageUrl)
                                                ),),
                                              ),
                                            ),
                                          )
                                              : SizedBox(
                                            height: double.infinity,
                                            child: AspectRatio(
                                              aspectRatio:
                                              (articlesMatrix[r]
                                              [c]
                                                  .media!
                                                  .primaryImage
                                                  .width! /
                                                  articlesMatrix[
                                                  r][c]
                                                      .media!
                                                      .primaryImage
                                                      .height!),
                                              child:  IgnorePointer(
                                                ignoring:  vpControllers[r][c]!.videoPlayerValue == null ? false : vpControllers[r][c]!.videoPlayerValue!.isPlaying,

                                                child: BetterVideoPlayer(
                                                  isFullScreen: true,
                                                  dataSource: BetterVideoPlayerDataSource.network('https://edge.api.brightcove.com/playback/v1/accounts/6314458267001/videos/${articlesMatrix[r][c]
                                                      .videoId}/master.m3u8?bcov_auth=eyJhbGciOiJSUzI1NiJ9.eyJhY2NpZCI6IjYzMTQ0NTgyNjcwMDEiLCJpYXQiOjE2Nzg3ODE5NDYsImV4cCI6NDA3MDg5ODA2MX0.DtQV2jIiQ4ipxTJzBg2w1lBdev6CJGRUBzldtUA7_0Ewl0jcVm_ErsOPAwOHV9r3ddy2lutT15MHMjyoVOG9gvP9919kqv40BAOBZJzcehz3MsYWWh4JDWhKDtBh2atRmeh4daYhNXqgmMeE9cioKycV_WEt7PexTE6ztMumdkh3rYDm4pdvpEvWZc1tN0K4ff91OM2oWZb8SRlVEJnDIU6exDfd6pUNZd80IoSVRKvHexFbX-IOMzK3bAvPf3l9X6c9ns70me08-ng9WyKmcuUXkeyDbS55OrG0b2v2VavryOBbwhU91hVYV0QokowOqO0fv0Au13NWpMrNQnSNuw'),
                                                  controller: vpControllers[r][c]!, configuration: BetterVideoPlayerConfiguration(
                                                  controls: const BetterVideoPlayerControls(isFullScreen: true,),
                                                    autoPlay: _currentRow == r && _currentColumn == c,
                                                    autoPlayWhenResume: true,
                                                    placeholder: CachedNetworkImage(imageUrl: articlesMatrix[r][c].imageUrl)
                                                ),),
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
                                                  end: Alignment.topCenter,
                                                  begin:
                                                  Alignment.bottomCenter)),
                                        ),
                                      )),
                                  Positioned(
                                      left: 25,
                                      right: 25,
                                      bottom: 25,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          AnimatedOpacity(
                                            duration: const Duration(
                                                milliseconds: 600),
                                            opacity: isInhighlight && !isPaused
                                                ? 0
                                                : 1,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: [
                                                    GestureDetector(
                                                      onTap: () {
                                                        setState(() {
                                                          isPaused = true;
                                                        });

                                                        try {
                                                          vpControllers[r][c]!
                                                              .pause();
                                                        } catch (e) {}
                                                        context.router.push(
                                                          StoryTellerDetailsPageRoute(
                                                            storyteller:
                                                            articlesMatrix[
                                                            r][c]
                                                                .storytellers!
                                                                .first,
                                                          ),
                                                        );
                                                      },
                                                      child: Row(
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                15),
                                                            child: CachedNetworkImage(
                                                                height: 50,
                                                                width: 50,
                                                                imageUrl: articlesMatrix[
                                                                r][c]
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
                                                                  articlesMatrix[
                                                                  r][c]
                                                                      .authorName,
                                                                  style:
                                                                  const TextStyle(
                                                                    fontSize:
                                                                    14,
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  _getDaysText(
                                                                      articlesMatrix[r]
                                                                      [
                                                                      c]
                                                                          .publishDate!),
                                                                  style:
                                                                  TextStyle(
                                                                    fontSize:
                                                                    12,
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                    color: Colors
                                                                        .white
                                                                        .withOpacity(
                                                                        0.5),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    GestureDetector(
                                                        onTap:
                                                            () =>
                                                            AppBottomSheet
                                                                .showSheet(
                                                              context,
                                                              child:
                                                              TopStoriesActionSheet(
                                                                article:
                                                                articlesMatrix[r]
                                                                [c],
                                                              ),
                                                            ),
                                                        child: Padding(
                                                          padding:
                                                          const EdgeInsets
                                                              .only(
                                                              right: 0
                                                              , left: 0
                                                          ),
                                                          child: Assets.icons
                                                              .moreVertical
                                                              .svg(
                                                              color: Colors
                                                                  .white
                                                                  .withOpacity(
                                                                  0.5),
                                                              width: 20),
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
                                                      start: 0
                                                      , end: 50),
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
                                                            articlesMatrix[r][c]
                                                                .description,
                                                            style:
                                                            const TextStyle(
                                                              color:
                                                              Colors.white,
                                                              fontSize: 16,
                                                              fontWeight:
                                                              FontWeight
                                                                  .w300,
                                                            ),
                                                            maxLines: expendText
                                                                ? null
                                                                : 2),
                                                        if (!expendText)
                                                          seeMore(
                                                              articlesMatrix[r]
                                                              [c]
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
                                                  duration: const Duration(
                                                      milliseconds: 600),
                                                  opacity:
                                                  isInhighlight && !isPaused
                                                      ? 0
                                                      : 1,
                                                  child: Padding(
                                                    padding:
                                                    const EdgeInsets.only(
                                                        left: 0
                                                        ,
                                                        right: 0
                                                        ,bottom:  0
                                                    ),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
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
                                                              builder: (context,
                                                                  state2) {
                                                                return ActionButtonWidget(
                                                                  onPressed:
                                                                      () {
                                                                    final _authPreferences =
                                                                    injector
                                                                        .get<
                                                                        AuthPreferences>();

                                                                    if (_authPreferences
                                                                        .isLoggedIn()) {
                                                                      if (!state
                                                                          .status
                                                                          .isLoading) {
                                                                        context
                                                                            .read<
                                                                            FollowStoryTellerCubit>()
                                                                            .call(
                                                                            articlesMatrix[r][c]
                                                                                .storytellers!
                                                                                .first,
                                                                            context,
                                                                            f: (
                                                                                v) {
                                                                              v
                                                                                  ? AppSnackBar
                                                                                  .showSuccessMessage(
                                                                                context,
                                                                                title: context
                                                                                    .localization
                                                                                    .activity
                                                                                    .followMessage,
                                                                              )
                                                                                  : AppSnackBar
                                                                                  .showSuccessMessage(
                                                                                context,
                                                                                title: context
                                                                                    .localization
                                                                                    .activity
                                                                                    .unfollowMessage,
                                                                              );
                                                                              context
                                                                                  .read<
                                                                                  GetStoryTellerCubit>()
                                                                                  .update(
                                                                                  articlesMatrix[r][c]
                                                                                      .storytellers!
                                                                                      .first
                                                                                      .path,
                                                                                  v);
                                                                            });
                                                                      }
                                                                    } else {
                                                                      context
                                                                          .read<
                                                                          HomeAbCubit>()
                                                                          .update(
                                                                          true);

                                                                      if (widget
                                                                          .doPop) {
                                                                        Navigator
                                                                            .pop(
                                                                            context);
                                                                      } else {
                                                                        context
                                                                            .read<
                                                                            ReelsCubit>()
                                                                            .update(
                                                                            null,
                                                                            context, index:_currentIndex);

                                                                        context
                                                                            .read<
                                                                            ReelsCubit>()
                                                                            .loadReels(
                                                                            showShimmer: false);
                                                                      }
                                                                      context
                                                                          .navigateToLoginScreen();
                                                                    }
                                                                  },
                                                                  width: (size
                                                                      .width -
                                                                      100) /
                                                                      4,
                                                                  child: (Color
                                                                  color) {
                                                                    return Text(
                                                                        (state2
                                                                            .status
                                                                            .isLoading)
                                                                            ? '...'
                                                                            : (articlesMatrix[r][c]
                                                                            .storytellers!
                                                                            .first
                                                                            .followed
                                                                            ? i18n
                                                                            .unfollow
                                                                            : i18n
                                                                            .follow),
                                                                        style: TextStyle(
                                                                            color:
                                                                            color,
                                                                            fontSize:
                                                                            10,
                                                                            fontWeight:
                                                                            FontWeight
                                                                                .w500));
                                                                  },
                                                                  isActive:
                                                                  true,
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            width: 14,
                                                          ),
                                                          ActionButtonWidget(
                                                              onPressed: () {
                                                                injector
                                                                    .get<
                                                                    AuthPreferences>()
                                                                    .isLoggedIn()
                                                                    ? () =>
                                                                    context
                                                                        .read<
                                                                        ArticlLikeCubit>()
                                                                        .likeOrUnlikeReel(
                                                                        articlesMatrix[r]
                                                                        [c],
                                                                        likestate
                                                                            .isLiked,
                                                                        context)
                                                                    : () =>
                                                                    context
                                                                        .navigateToLoginScreen();
                                                              },
                                                              child: (color) {
                                                                return Row(
                                                                  children: [
                                                                    likestate
                                                                        .isLiked
                                                                        ? Assets
                                                                        .icons
                                                                        .heartFilled
                                                                        .svg(
                                                                        width:
                                                                        15)
                                                                        : Assets
                                                                        .icons
                                                                        .heartOutlined
                                                                        .svg(
                                                                        width: 15),
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
                                                                          FontWeight
                                                                              .w500),
                                                                    )
                                                                  ],
                                                                );
                                                              },
                                                              width:
                                                              (size.width -
                                                                  100) /
                                                                  4),
                                                          const SizedBox(
                                                            width: 14,
                                                          ),
                                                          ActionButtonWidget(
                                                              onPressed: () {},
                                                              child: (c) =>
                                                                  Row(
                                                                    children: [
                                                                      Assets
                                                                          .icons
                                                                          .newComment
                                                                          .svg(
                                                                          width: 15),
                                                                      const SizedBox(
                                                                        width:
                                                                        8,
                                                                      ),
                                                                      const Text(
                                                                        '0',
                                                                        style: TextStyle(
                                                                            color: Colors
                                                                                .white,
                                                                            fontSize:
                                                                            10,
                                                                            fontWeight:
                                                                            FontWeight
                                                                                .w500),
                                                                      )
                                                                    ],
                                                                  ),
                                                              width:
                                                              (size.width -
                                                                  100) /
                                                                  4),
                                                          const SizedBox(
                                                            width: 14,
                                                          ),
                                                          ActionButtonWidget(
                                                              onPressed: () {
                                                                Share.share(
                                                                    articlesMatrix[
                                                                    r][c]
                                                                        .articleWebUrl);
                                                              },
                                                              child: (c) =>
                                                                  Assets
                                                                      .icons
                                                                      .newSend
                                                                      .svg(
                                                                      width:
                                                                      15),
                                                              width:
                                                              (size.width -
                                                                  100) /
                                                                  4)
                                                        ]),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 25,
                                                )
                                              ],
                                            ),
                                          ),
                                          /*Directionality(
                                            textDirection: TextDirection.ltr,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(2),
                                              ),
                                              clipBehavior: Clip.hardEdge,
                                              child: SizedBox(
                                                  width: MediaQuery
                                                      .of(context)
                                                      .size
                                                      .width,
                                                  child: vpControllers[r][c] ==
                                                      null
                                                      ? const SizedBox(
                                                    height: 16,
                                                  )
                                                      : AbsorbPointer(
                                                      child: MyVideoProgressIndicator(
                                                          widget
                                                              .selectedArticle
                                                              .videoLength,
                                                          vpControllers[r]
                                                          [c]!))),
                                            ),
                                          ),*/
                                        ],
                                      )),
                                  /*Positioned(
                                      left: 0,
                                      right: 0,
                                      bottom: 0,
                                      child: Directionality(
                                        textDirection: TextDirection.ltr,
                                        child: vpControllers[r][c] == null
                                            ? const SizedBox()
                                            : MyVideoProgressIndicator(
                                            widget.selectedArticle
                                                .videoLength,
                                            vpControllers[r][c]!,
                                            beTrans: true),
                                      )),*/
                                ],
                              ),
                            );
                          },
                        ),
                      );
                    });
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
                        child: OmnidirectionalPageView(
                          widgetMatrixCanUpdate: false,
                          fisheyeDirection: const [AxisDirection.down],
                          widgetMatrix: widgets,
                          rowIndex: _currentRow,
                          columnIndex: _currentColumn,
                          onSwipe: (int row, int column) {
                            /*if (e == widget.articles.length - 3) {
                          context.read<ReelsCubit>().loadMoreReels();
                        }*/
                            try {
                              _currentIndex =
                                  (row * vpControllers[0].length - column)
                                      .abs();
                              try {
                                vpControllers[_currentRow][_currentColumn]!
                                    .pause();
                              } catch (e) {
                                throw 'errowr with stop ${e.toString()}';
                              }
                              _currentRow = row;
                              _currentColumn = column;
                              try {
                                vpControllers[row][column]!
                                    .play();
                              } catch (e) {
                                throw 'error with play ${e.toString()}';
                              }

                              setState(() {
                                isPaused = false;
                                isInhighlight = false;
                                expendText = false;
                              });
                              interhighlight();
                            } catch (_) {
                              print('ERR - $_');
                            }
                          },
                          size: Size(size.width + 10, size.height + 70),
                        ));
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
                                for (var e in element) {
                                  try {
                                    e!.setVolume(isMute! ? 0.0 : 1.0);
                                  } catch (e) {}
                                }
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
                                  vpControllers[_currentRow][_currentColumn]!
                                      .pause();
                                } catch (e) {}
                              } else {
                                try {
                                  vpControllers[_currentRow][_currentColumn]!
                                      .play();
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
                                    .update(null, context, index: _currentIndex);
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

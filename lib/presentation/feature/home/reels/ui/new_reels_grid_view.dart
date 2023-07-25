import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/presentation/feature/home/reels/ui/reels_card.dart';
import 'package:blinx/presentation/feature/home/reels/ui/reels_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

import '../cubit/reels_cubit.dart';

class NewReelsGridView extends StatefulWidget {
  NewReelsGridView(
      {Key? key,
      required this.reelsList,
      this.isInLoadingState = false,
      this.isStoryTellerProfile = false,
      required this.reelsRowType,
      this.previewPlay = false, required this.vpController})
      : super(key: key);

  bool previewPlay;
  final VideoPlayerController? vpController;
  final List<Article>? reelsList;
  final bool isInLoadingState;
  final bool isStoryTellerProfile;
  final List<ReelsRowType>? reelsRowType;

  factory NewReelsGridView.showShimmer() {
    return NewReelsGridView(
      isInLoadingState: true,
      reelsList: List.generate(
        10,
        (_) => Article.simple(''),
      ),
      reelsRowType: const [
        ReelsRowType.Red,
        ReelsRowType.Blue,
        ReelsRowType.Green
      ], vpController: null,
    );
  }

  @override
  State<NewReelsGridView> createState() => _NewReelsGridViewState();
}

class _NewReelsGridViewState extends State<NewReelsGridView>
    with AutomaticKeepAliveClientMixin<NewReelsGridView> {
  @override
  Widget build(BuildContext context) {
    var reelsRowType = widget.reelsRowType;
    if ((reelsRowType ?? []).isEmpty || reelsRowType == null) {
      reelsRowType = [ReelsRowType.Red, ReelsRowType.Blue, ReelsRowType.Green];
    }

    final size = MediaQuery.of(context).size;
    super.build(context);
    if ((widget.reelsList ?? []).isEmpty) {
      return NewReelsGridView.showShimmer();
    }
    return SizedBox(
      height: size.height,
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children:
              (reelsRowType)!.map((e) => _reelsRowInWidget(e, size)).toList(),
        ),
      ),
    );
  }

  Widget _reelsRowInWidget(ReelsRowType type, Size size) {
    final unitOfHeight = ((size.height - 100) / 8);
    double width(int cardsCount) => (size.width);
    switch (type) {
      case ReelsRowType.Red:
        final reelsList = widget.reelsList!.getRange(0, 3).toList();
        final height = unitOfHeight * 4;
        return SizedBox(
          height: height,
          width: width(2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: width(2) / 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: height / 2,
                      child: ReelsCard(
                          imageUrl: reelsList[0].mobileBlinx,
                          isLoading: widget.isInLoadingState,
                          squared: widget.isStoryTellerProfile,
                          onPlayIconTap: () {
                            context.read<ReelsCubit>().update(
                                reelsList[0], context,
                                heroTag: reelsList[0].path);
                          },
                          article: reelsList[0]),
                    ),
                    SizedBox(
                      height: height / 2,
                      child: ReelsCard(
                        imageUrl: reelsList[1].mobileBlinx,
                        isLoading: widget.isInLoadingState,
                        squared: widget.isStoryTellerProfile,
                        onPlayIconTap: () {
                          context.read<ReelsCubit>().update(
                              reelsList[1], context,
                              heroTag: reelsList[1].path);
                        },
                        article: reelsList[1],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: (width(2) / 3) * 2,
                child: ReelsCard(
                  imageUrl: reelsList[2].mobileBlinx,
                  isLoading: widget.isInLoadingState,
                  squared: widget.isStoryTellerProfile,
                  onPlayIconTap: () {
                    context.read<ReelsCubit>().update(reelsList[2], context,
                        heroTag: reelsList[2].path);
                  },
                  article: reelsList[2],
                  playingVideo: true,
                  canPlay: widget.previewPlay,
                  vpController: widget.vpController,
                ),
              )
            ],
          ),
        );
      case ReelsRowType.Blue:
        final reelsList = widget.reelsList!.getRange(3, 7).toList();
        final height = unitOfHeight * 3;
        return SizedBox(
          height: height,
          width: width(2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: width(2) / 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                        height: height / 2,
                        child: ReelsCard(
                            imageUrl: reelsList[0].mobileBlinx,
                            isLoading: widget.isInLoadingState,
                            squared: widget.isStoryTellerProfile,
                            onPlayIconTap: () {
                              context.read<ReelsCubit>().update(
                                  reelsList[0], context,
                                  heroTag: reelsList[0].path);
                            },
                            article: reelsList[0])),
                    SizedBox(
                        height: height / 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: width(2) / 4,
                              child: ReelsCard(
                                  imageUrl: reelsList[1].mobileBlinx,
                                  isLoading: widget.isInLoadingState,
                                  squared: widget.isStoryTellerProfile,
                                  onPlayIconTap: () {
                                    context.read<ReelsCubit>().update(
                                        reelsList[1], context,
                                        heroTag: reelsList[1].path);
                                  },
                                  article: reelsList[1]),
                            ),
                            SizedBox(
                              width: width(2) / 4,
                              child: ReelsCard(
                                  imageUrl: reelsList[2].mobileBlinx,
                                  isLoading: widget.isInLoadingState,
                                  squared: widget.isStoryTellerProfile,
                                  onPlayIconTap: () {
                                    context.read<ReelsCubit>().update(
                                        reelsList[2], context,
                                        heroTag: reelsList[2].path);
                                  },
                                  article: reelsList[2]),
                            ),
                          ],
                        ))
                  ],
                ),
              ),
              SizedBox(
                  width: width(3) / 2,
                  child: ReelsCard(
                    imageUrl: reelsList[3].mobileBlinx,
                    isLoading: widget.isInLoadingState,
                    squared: widget.isStoryTellerProfile,
                    onPlayIconTap: () {
                      context.read<ReelsCubit>().update(reelsList[3], context,
                          heroTag: reelsList[3].path);
                    },
                    article: reelsList[3],
                    playingVideo: false,
                  ))
            ],
          ),
        );
      case ReelsRowType.Green:
        final reelsList = widget.reelsList!.getRange(7, 10).toList();
        return SizedBox(
          height: unitOfHeight * 1.5,
          width: width(3),
          child: Row(
            children: [
              SizedBox(
                  width: width(3) / 4,
                  child: ReelsCard(
                      imageUrl: reelsList[0].mobileBlinx,
                      isLoading: widget.isInLoadingState,
                      squared: widget.isStoryTellerProfile,
                      onPlayIconTap: () {
                        context.read<ReelsCubit>().update(reelsList[0], context,
                            heroTag: reelsList[0].path);
                      },
                      article: reelsList[0])),
              SizedBox(
                  width: width(3) / 2,
                  child: ReelsCard(
                      imageUrl: reelsList[1].mobileBlinx,
                      isLoading: widget.isInLoadingState,
                      squared: widget.isStoryTellerProfile,
                      onPlayIconTap: () {
                        context.read<ReelsCubit>().update(reelsList[1], context,
                            heroTag: reelsList[1].path);
                      },
                      article: reelsList[1])),
              SizedBox(
                  width: width(3) / 4,
                  child: ReelsCard(
                      imageUrl: reelsList[2].mobileBlinx,
                      isLoading: widget.isInLoadingState,
                      squared: widget.isStoryTellerProfile,
                      onPlayIconTap: () {
                        context.read<ReelsCubit>().update(reelsList[2], context,
                            heroTag: reelsList[2].path);
                      },
                      playingVideo: false,
                      article: reelsList[2]))
            ],
          ),
        );
    }
  }

  @override
  bool get wantKeepAlive => true;
}

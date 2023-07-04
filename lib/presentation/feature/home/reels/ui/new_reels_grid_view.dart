import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/presentation/feature/home/reels/ui/reels_card.dart';
import 'package:blinx/presentation/feature/home/reels/ui/reels_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/reels_cubit.dart';

class NewReelsGridView extends StatefulWidget {
  const NewReelsGridView({
    Key? key,
    required this.reelsList,
    this.isInLoadingState = false,
    this.isStoryTellerProfile = false,
    required this.reelsRowType,
  }) : super(key: key);

  final List<Article> reelsList;
  final bool isInLoadingState;
  final bool isStoryTellerProfile;
  final List<ReelsRowType> reelsRowType;

  @override
  State<NewReelsGridView> createState() => _NewReelsGridViewState();
}

class _NewReelsGridViewState extends State<NewReelsGridView>
    with AutomaticKeepAliveClientMixin<NewReelsGridView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    super.build(context);
    return Wrap(
      direction: Axis.vertical,
      spacing: 10,
      children: widget.reelsRowType.map((e) => _reelsRowInWidget(e)).toList(),
    );
  }

  Widget _reelsRowInWidget(ReelsRowType type) {
    switch (type) {
      case ReelsRowType.Red:
        final reelsList = widget.reelsList.getRange(0, 2).toList();
        return Expanded(
          flex: 4,
          child: Wrap(
            spacing: 10,
            children: [
              Expanded(
                child: Wrap(
                  direction: Axis.vertical,
                  spacing: 10,
                  children: [
                    Expanded(
                        child: ReelsCard(
                      imageUrl: reelsList[0].mobileBlinx,
                      isLoading: widget.isInLoadingState,
                      squared: widget.isStoryTellerProfile,
                      onPlayIconTap: () {
                        context.read<ReelsCubit>().update(reelsList[0]);
                      }, article: reelsList[0]
                    )),
                    Expanded(
                        child: ReelsCard(
                      imageUrl: reelsList[1].mobileBlinx,
                      isLoading: widget.isInLoadingState,
                      squared: widget.isStoryTellerProfile,
                      onPlayIconTap: () {
                        context.read<ReelsCubit>().update(reelsList[1]);
                      }, article: reelsList[1],
                    ))
                  ],
                ),
              ),
              Expanded(
                  flex: 3,
                  child: ReelsCard(
                    imageUrl: reelsList[2].mobileBlinx,
                    isLoading: widget.isInLoadingState,
                    squared: widget.isStoryTellerProfile,
                    onPlayIconTap: () {
                      context.read<ReelsCubit>().update(reelsList[2]);
                    },article: reelsList[2], playingVideo: true,
                  ))
            ],
          ),
        );
      case ReelsRowType.Blue:
        final reelsList = widget.reelsList.getRange(3, 6).toList();
        return Expanded(
          flex: 3,
          child: Wrap(
            spacing: 10,
            children: [
              Expanded(
                child: Wrap(
                  direction: Axis.vertical,
                  spacing: 10,
                  children: [
                    Expanded(
                        child: ReelsCard(
                      imageUrl: reelsList[0].mobileBlinx,
                      isLoading: widget.isInLoadingState,
                      squared: widget.isStoryTellerProfile,
                      onPlayIconTap: () {
                        context.read<ReelsCubit>().update(reelsList[0]);
                      },article: reelsList[0]
                    )),
                    Expanded(
                        child: Wrap(
                          spacing: 10,
                      children: [
                        ReelsCard(
                          imageUrl: reelsList[1].mobileBlinx,
                          isLoading: widget.isInLoadingState,
                          squared: widget.isStoryTellerProfile,
                          onPlayIconTap: () {
                            context.read<ReelsCubit>().update(reelsList[1]);
                          },article: reelsList[1]
                        ),
                        ReelsCard(
                          imageUrl: reelsList[2].mobileBlinx,
                          isLoading: widget.isInLoadingState,
                          squared: widget.isStoryTellerProfile,
                          onPlayIconTap: () {
                            context.read<ReelsCubit>().update(reelsList[2]);
                          },article: reelsList[2]
                        ),
                      ],
                    ))
                  ],
                ),
              ),
              Expanded(
                  child: ReelsCard(
                imageUrl: reelsList[3].mobileBlinx,
                isLoading: widget.isInLoadingState,
                squared: widget.isStoryTellerProfile,
                onPlayIconTap: () {
                  context.read<ReelsCubit>().update(reelsList[3]);
                },article: reelsList[3], playingVideo: true,
              ))
            ],
          ),
        );
      case ReelsRowType.Green:
        final reelsList = widget.reelsList.getRange(7, 9).toList();
        return Expanded(
          flex: 1,
          child: Wrap(
            spacing: 10,
            children: [
              Expanded(
                  child: ReelsCard(
                imageUrl: reelsList[0].mobileBlinx,
                isLoading: widget.isInLoadingState,
                squared: widget.isStoryTellerProfile,
                onPlayIconTap: () {
                  context.read<ReelsCubit>().update(reelsList[0]);
                },article: reelsList[0]
              )),
              Expanded(
                  flex: 2,
                  child: ReelsCard(
                    imageUrl: reelsList[1].mobileBlinx,
                    isLoading: widget.isInLoadingState,
                    squared: widget.isStoryTellerProfile,
                    onPlayIconTap: () {
                      context.read<ReelsCubit>().update(reelsList[1]);
                    },article: reelsList[1]
                  )),
              Expanded(
                  child: ReelsCard(
                    imageUrl: reelsList[2].mobileBlinx,
                    isLoading: widget.isInLoadingState,
                    squared: widget.isStoryTellerProfile,
                    onPlayIconTap: () {
                      context.read<ReelsCubit>().update(reelsList[2]);
                    }, playingVideo: true,article: reelsList[2]
                  ))
            ],
          ),
        );
    }
  }

  @override
  bool get wantKeepAlive => true;
}

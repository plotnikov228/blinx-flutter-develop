import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/presentation/feature/home/reels/cubit/reels_cubit.dart';
import 'package:blinx/presentation/feature/home/reels/ui/reels_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReelsGridView extends StatefulWidget {
  const ReelsGridView({
    Key? key,
    required this.reelsList,
    this.isInLoadingState = false,
    this.isStoryTellerProfile = false,
  }) : super(key: key);

  final List<Article> reelsList;
  final bool isInLoadingState;
  final bool isStoryTellerProfile;

  factory ReelsGridView.showShimmer() {
    return ReelsGridView(
      isInLoadingState: true,
      reelsList: List.generate(
        8,
        (_) => Article.simple(''),
      ),
    );
  }

  @override
  State<ReelsGridView> createState() => _ReelsGridViewState();
}

class _ReelsGridViewState extends State<ReelsGridView> with AutomaticKeepAliveClientMixin<ReelsGridView> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return GridView.builder( // текущий грид
      shrinkWrap: true,
      itemCount: widget.reelsList.length,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: widget.isStoryTellerProfile ? 2 : 16.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: widget.isStoryTellerProfile ? 3 : MediaQuery.of(context).size.width > 500 ? 4 : 2,
        crossAxisSpacing: widget.isStoryTellerProfile ? 2 : 16.0,
        mainAxisSpacing: widget.isStoryTellerProfile ? 2 : 16.0,
        childAspectRatio: 0.562,
      ),
      itemBuilder: (_, index) {
        final article = widget.reelsList[index];
        return ReelsCard(
          isLoading: widget.isInLoadingState,
          imageUrl: article.mobileBlinx,
          squared: widget.isStoryTellerProfile,
          onPlayIconTap: () {
            context.read<ReelsCubit>().update(article, context);
          }, article: article,
        ); // видео карточка
      },
    );
  }
  
  @override
  bool get wantKeepAlive => true;
}

import 'package:blinx/domain/entities/article.dart';
import 'package:flutter/material.dart';
import 'package:blinx/presentation/feature/home/you/you_page_logged_in/ui/liked_content_tab/ui/grid_blinx_component.dart';
import 'package:blinx/presentation/feature/home/cubit/home_ab_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class GridBlinxView extends StatelessWidget {
  const GridBlinxView({
    Key? key,
    required this.reelsList,
    this.isInLoadingState = false,
  }) : super(key: key);

  final List<Article> reelsList;
  final bool isInLoadingState;

  factory GridBlinxView.showShimmer() {
    return GridBlinxView(
      isInLoadingState: true,
      reelsList: List.generate(
        8,
        (_) => Article.simple(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return 
    GridView.builder(
      shrinkWrap: true,
      itemCount: reelsList.length,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.only(top: 1.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 1.0,
        mainAxisSpacing: 1.0,
        childAspectRatio: 607/1080,
      ),
      itemBuilder: (_, index) {
        final article = reelsList[index];
        return GridBlinxComponent(
          isLoading: isInLoadingState,
          imageUrl: article.mobileBlinx,
          onPlayIconTap: () {
            context.read<HomeAbCubit>().update(false,selectedArticle: reelsList[index], page: 'profile_page');
          },
        );
      },
    );
  }
}

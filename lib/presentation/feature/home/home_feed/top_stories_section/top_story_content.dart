import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/presentation/feature/home/cubit/like_article_cubit.dart';
import 'package:blinx/presentation/feature/home/home_feed/top_stories_section/top_stories_action_sheet.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:blinx/presentation/widgets/bottom_sheet/app_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopStoryContent extends StatelessWidget {
  const TopStoryContent({super.key, required this.topStory});

  final Article topStory;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 194,
      width: 160,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 10, 12, 0),
              child: BlocBuilder<LikeArticleCubit, LikeArticleState>(
                builder: (context, state) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        child: Assets.icons.moreVertical.svg(),
                        onTap: () => AppBottomSheet.showSheet(
                          context,
                          child: TopStoriesActionSheet(
                            article: topStory,
                          ),
                        ),
                      ),
                      const Spacer(),
                    ],
                  );
                },
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 12, end: 6),
              child: AppText.titleBold17(
                topStory.title,
                maxLines: 2,
                color: context.colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

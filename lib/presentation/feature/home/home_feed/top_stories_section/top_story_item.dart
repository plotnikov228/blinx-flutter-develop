import 'package:auto_route/auto_route.dart';
import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/presentation/feature/home/home_feed/top_stories_section/top_story_content.dart';
import 'package:blinx/presentation/feature/home/home_feed/top_stories_section/top_story_image.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';

class TopStoryItem extends StatelessWidget {
  const TopStoryItem({
    super.key,
    required this.topStory,
  });

  final Article topStory;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 16),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => context.navigateTo(
          ArticleScreenRoute(article: topStory),
        ),
        child: Stack(
          alignment: AlignmentDirectional.centerStart,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 200,
                width: 150,
                decoration: BoxDecoration(
                  gradient: topStory.categories.first.gradientFromColorString,
                  borderRadius: const BorderRadiusDirectional.only(
                    topEnd: Radius.circular(30),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Stack(
                children: [
                  AbsorbPointer(
                    child: TopStoryImage(imageUrl: topStory.imageUrl),
                  ),
                  TopStoryContent(topStory: topStory),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

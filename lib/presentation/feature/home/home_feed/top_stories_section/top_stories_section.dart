import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/feature/home/home_feed/top_stories_section/top_story_item.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class TopStoriesSection extends StatelessWidget {
  const TopStoriesSection({
    Key? key,
    required this.topStories,
  }) : super(key: key);

  final List<Article> topStories;

  @override
  Widget build(BuildContext context) {
    if (topStories.isEmpty) {
      return const SizedBox.shrink();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: AppText.title18(
            context.localization.topStories.topStories,
            maxLines: 1,
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: topStories.length,
            itemBuilder: ((context, index) => Padding(
                  padding:
                      EdgeInsetsDirectional.only(start: (index == 0) ? 16 : 0),
                  child: TopStoryItem(
                    topStory: topStories[index],
                  ),
                )),
          ),
        )
      ],
    );
  }
}

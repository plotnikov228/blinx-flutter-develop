import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/feature/home/home_feed/reels_section/reels_item.dart';
import 'package:blinx/presentation/widgets/app_section_heading_title.dart';
import 'package:flutter/material.dart';

class ReelsSection extends StatelessWidget {
  const ReelsSection({
    Key? key,
    required this.reels, this.page='',
  }) : super(key: key);

  final List<Article> reels;
  final String page;

  @override
  Widget build(BuildContext context) {
    if (reels.isEmpty) {
      return const SizedBox.shrink();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AppSectionHeadingTitle(
          title: context.localization.defaultSection.blinx.toUpperCase(),
        ),
        SizedBox(
          height: 326.26,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: reels.length,
            itemBuilder: ((context, index) => Padding(
                  padding:
                      EdgeInsetsDirectional.only(start: (index == 0) ? 16 : 0),
                  child: ReelsItem(
                    reels: reels,
                    reelsItem: reels[index],
                    page: page,
                  ),
                )),
          ),
        )
      ],
    );
  }
}

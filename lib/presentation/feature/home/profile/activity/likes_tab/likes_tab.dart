import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:blinx/presentation/feature/home/home_feed/reels_section/reels_section.dart';
import 'package:blinx/presentation/feature/home/home_feed/trending_articles/trending_articles_section_widget.dart';
import 'package:blinx/presentation/feature/home/profile/activity/likes_tab/cubit/get_liked_articles_state.dart';
import 'package:blinx/presentation/widgets/app_section_heading_title.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:blinx/presentation/widgets/shimmer_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/get_liked_articles_cubit.dart';

class LikesTab extends StatelessWidget {
  const LikesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetLikedArticlesCubit, GetLikedArticlesState>(
        builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                if(state.status.isLoading) ... [
                  AppSectionHeadingTitle(
                    title: context.localization.defaultSection.blinx.toUpperCase(),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.273,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: ((context, index) => Container(
                        margin: const EdgeInsets.symmetric(horizontal: 12),
                        width: 160,child: const ShimmerBox(),)
                      ),
                    ),
                  ),
                ] else if(state.articlesList.where((e) => e.isReels).toList().isNotEmpty)
                  ReelsSection(
                    reels: state.articlesList.where((e) => e.isReels).toList(),
                  ),

                if(state.articlesList.where((e) => !e.isReels).toList().isNotEmpty) ...[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 32, 0, 24),
                    child: AppText.titleBold(
                      context.localization.defaultSection.articles,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  TrendingArticlesSectionWidget(
                    articles: state.articlesList.where((e) => !e.isReels).toList(),
                  ),
                  const SizedBox(height: 32),
                ]
              ],
            ),
          ),
        );
      }
    );
  }
}

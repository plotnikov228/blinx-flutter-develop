import 'package:auto_route/auto_route.dart';
import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/feature/home/home_feed/trending_articles/trending_article_list_item.dart';
import 'package:blinx/presentation/feature/home/home_feed/trending_articles/trending_articles_section_widget.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:blinx/presentation/widgets/app_section_heading_title.dart';
import 'package:flutter/material.dart';

class SearchResultAllArticlesSection extends StatelessWidget {
  const SearchResultAllArticlesSection({
    Key? key,
    required this.articles,
    required this.onLoadMore,
  }) : super(key: key);

  final List<Article> articles;
  final VoidCallback onLoadMore;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final widgetHeight = 332.5 * (9 / 16);

    if (articles.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppSectionHeadingTitle(
          title: context.localization.articles.allArticles,
          // seeAllText: context.localization.articles.seeAllArticles,
          // onSeeAllTap: () => context.router.push(
          //   const SeeAllArticlesScreenRoute(),
          // ),
        ),
        SizedBox(
          height: widgetHeight,
          child: NotificationListener<ScrollNotification>(
            onNotification: (notification) {
              final metrics = notification.metrics;
              if (metrics.pixels >= metrics.maxScrollExtent) {
                onLoadMore();
              }

              return true;
            },
            child: TrendingArticlesSectionWidget(
              articles: articles,
            ),
          ),
        ),
      ],
    );
  }
}

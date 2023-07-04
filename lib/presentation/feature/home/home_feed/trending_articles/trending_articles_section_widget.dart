import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/presentation/feature/home/home_feed/trending_articles/trending_article_list_item.dart';
import 'package:flutter/material.dart';

class TrendingArticlesSectionWidget extends StatelessWidget {
  const TrendingArticlesSectionWidget({
    Key? key,
    required this.articles,
  }) : super(key: key);

  final List<Article> articles;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 332.5 * (9/16),
          child: ListView.builder(
            padding: const EdgeInsets.only(
              left: 16,
            ),
            itemCount: articles.length,
            controller: PageController(
              viewportFraction: .9,
            ),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final article = articles[index];
              return Padding(
                padding: EdgeInsetsDirectional.only(
                  end: (index == articles.length - 1) ? 0 : 16,
                  start: (index == 0) ? 16 : 0,
                ),
                child: TrendingArticleListItem(
                  article: article,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

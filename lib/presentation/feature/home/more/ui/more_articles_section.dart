import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/presentation/feature/home/home_feed/trending_articles/trending_article_list_item.dart';
import 'package:flutter/material.dart';

class MoreArticlesSection extends StatelessWidget {
  const MoreArticlesSection({
    Key? key,
    required this.articles,
    required this.isLoading,
  }) : super(key: key);

  final List<Article> articles;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final widgetHeight = screenSize.height * .49;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: widgetHeight,
          child: PageView.builder(
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

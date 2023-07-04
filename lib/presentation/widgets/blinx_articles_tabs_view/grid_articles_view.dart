import 'package:blinx/domain/entities/article.dart';
import 'package:flutter/material.dart';
import 'package:blinx/presentation/widgets/blinx_articles_tabs_view/grid_article_component.dart';

class GridArticlesView extends StatelessWidget {
  const GridArticlesView({
    Key? key,
    required this.articlesList,
    this.isInLoadingState = false,
  }) : super(key: key);

  final List<Article> articlesList;
  final bool isInLoadingState;

  factory GridArticlesView.showShimmer() {
    return GridArticlesView(
      isInLoadingState: true,
      articlesList: List.generate(
        8,
        (_) => Article.simple(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: articlesList.length,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.only(top: 1.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 1.0,
        mainAxisSpacing: 1.0,
        childAspectRatio: .85,
      ),
      itemBuilder: (_, index) {
        final article = articlesList[index];
        return GridArticleComponent(
          article: article,
        );
      },
    );
  }
}

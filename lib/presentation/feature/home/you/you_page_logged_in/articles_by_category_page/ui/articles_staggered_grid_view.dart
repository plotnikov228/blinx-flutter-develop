import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/extensions/num_extension.dart';
import 'package:blinx/presentation/feature/home/you/you_page_logged_in/articles_by_category_page/ui/article_card.dart';
import 'package:flutter/material.dart';

class ArticlesStaggeredGridView extends StatelessWidget {
  const ArticlesStaggeredGridView({
    Key? key,
    required this.onItemSelected,
    required this.articles,
    this.scrollController,
  }) : super(key: key);

  final List<Article> articles;
  final ValueChanged<Article> onItemSelected;
  final ScrollController? scrollController;

  int get _maxItemsLength => articles.length - 1;

  @override
  Widget build(BuildContext context) {
    final middleIndex = ((_maxItemsLength) / 2).roundUp;

    // TODO(performance issues): improve this code, ideally we should iterate the articles once.
    return SingleChildScrollView(
      controller: scrollController,
      physics: const AlwaysScrollableScrollPhysics(
        parent: ClampingScrollPhysics(),
      ),
      padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 12, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsetsDirectional.only(end: 12),
              child: Column(
                children: List.generate(middleIndex, (index) {
                  final height = (index % 2 == 0) ? 128.0 : 256.0;
                  final article = articles[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: SizedBox(
                      height: height,
                      child: GestureDetector(
                        onTap: () => onItemSelected(article),
                        child: ArticleCard(article: article),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: List.generate(middleIndex, (index) {
                final height = (index % 2 != 0) ? 128.0 : 256.0;
                final article = articles[middleIndex + index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: SizedBox(
                    height: height,
                    child: GestureDetector(
                      onTap: () => onItemSelected(article),
                      child: ArticleCard(article: article),
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

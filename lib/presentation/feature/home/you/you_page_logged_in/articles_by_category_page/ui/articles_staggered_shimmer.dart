import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/presentation/feature/home/you/you_page_logged_in/articles_by_category_page/ui/articles_staggered_grid_view.dart';
import 'package:blinx/presentation/widgets/shimmer_box.dart';
import 'package:flutter/material.dart';

class ArticlesStaggeredShimmer extends StatelessWidget {
  const ArticlesStaggeredShimmer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShimmerBox(
      child: ArticlesStaggeredGridView(
        articles: List.generate(
          8,
          (index) => Article.simple(
            '',
          ),
        ),
        onItemSelected: (_) {},
      ),
    );
  }
}

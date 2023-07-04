import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/presentation/feature/explore/widgets/search_result_all_articles_section.dart';
import 'package:blinx/presentation/widgets/shimmer_box.dart';
import 'package:flutter/material.dart';

class ExploreSearchResultsShimmer extends StatelessWidget {
  const ExploreSearchResultsShimmer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Row(
            children: List.generate(
              2,
              (index) => const Padding(
                padding: EdgeInsets.only(left: 16.0, right: 8),
                child: ShimmerBox(
                  borderRadius: 32,
                  width: 72,
                  height: 32,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.only(left: 16.0, right: 8),
            child: ShimmerBox(
              borderRadius: 32,
              width: 144,
              height: 12,
            ),
          ),
          const SizedBox(height: 32),
          ShimmerBox(
            width: size.width,
            height: size.height * .6,
            child: SearchResultAllArticlesSection(
              articles: List.generate(
                8,
                (_) => Article.simple(''),
              ),
              onLoadMore: () {},
            ),
          ),
        ],
      ),
    );
  }
}

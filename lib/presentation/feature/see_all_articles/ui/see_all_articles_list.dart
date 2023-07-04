import 'package:blinx/presentation/feature/home/home_feed/trending_articles/trending_article_list_item.dart';
import 'package:blinx/presentation/feature/see_all_articles/cubit/see_all_articles_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeeAllArticlesList extends StatelessWidget {
  const SeeAllArticlesList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SeeAllArticlesCubit, SeeAllArticlesState>(
      builder: (context, state) {
        final articlesList = state.paginatedArticles.articlesList;

        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          itemCount: articlesList.length,
          itemBuilder: ((_, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: TrendingArticleListItem(
                  article: articlesList[index],
                ),
              )),
        );
      },
    );
  }
}

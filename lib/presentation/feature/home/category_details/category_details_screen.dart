import 'package:blinx/domain/entities/category.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:blinx/presentation/feature/home/category_details/widgets/horizontal_categories_list.dart';
import 'package:blinx/presentation/feature/home/home_feed/home_feed_page.dart';
import 'package:blinx/presentation/feature/home/home_feed/reels_section/reels_section.dart';
import 'package:blinx/presentation/widgets/app_bar/blinx_app_bar.dart';
import 'package:blinx/presentation/widgets/shimmer_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/get_category_articles_cubit.dart';
import 'cubit/get_category_articles_state.dart';

import 'package:blinx/presentation/feature/home/home_feed/trending_articles/trending_articles_section_widget.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:blinx/presentation/feature/home/home_feed/hero_section/hero_section_widget.dart';

class CategoryDetailsScreen extends StatefulWidget {
  const CategoryDetailsScreen({
    Key? key,
    required this.category,
  }) : super(key: key);
  final Category category;

  @override
  State<CategoryDetailsScreen> createState() => _CategoryDetailsScreenState();
}

class _CategoryDetailsScreenState extends State<CategoryDetailsScreen> {
  late final Category _category = widget.category;
  List<Category> subcategories = [];
  late Category? _subCategory =
      subcategories.isNotEmpty ? subcategories.first : null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BlinxAppBar.normal(
        title: _category.displayName,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (_subCategory != null)
                HorizontalCategoriesList(
                  categories: subcategories,
                  selectedCategory: _subCategory!,
                  onCategorySelected: (v) => setState(() => _subCategory = v),
                ),
              BlocProvider(
                create: (_) => injector<GetCategoryArticlesCubit>()
                  ..getArticles(_category.name),
                child: BlocBuilder<GetCategoryArticlesCubit,
                    GetCategoryArticlesState>(
                  builder: (context, state) {
                    if (state.status.isLoading) {
                      return Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.273,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 6,
                              itemBuilder: ((context, index) => Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 12),
                                    width: 160,
                                    child: const ShimmerBox(),
                                  )),
                            ),
                          ),
                        ],
                      );
                    }

                    final isHeroArticles = state.paginatedArticles.articlesList
                            .where((e) => e.isHero)
                            .toList();

                    final isTrendingArticles = state.paginatedArticles.articlesList
                            .where((e) => e.isTopStories)
                            .toList();
                    
                    final reelsArticles = state.paginatedArticles.articlesList
                            .where((e) => e.isReels)
                            .toList();

                    final allArticles = state.paginatedArticles.articlesList
                            .where((e) => !e.isTopStories && !e.isReels && !e.isHero)
                            .toList();

                    var toDisplay = <Widget>[];

                    if(isHeroArticles.isNotEmpty){
                      toDisplay.addAll([
                        HeroSectionWidget(
                              articles: isHeroArticles,
                            ),
                        const SizedBox(
                          height: 24,
                        ),
                      ]);
                    }

                    if(isTrendingArticles.isNotEmpty){
                      toDisplay.addAll([
                        Container(
                          padding: const EdgeInsets.only(right: 16.0,bottom: 16.0),
                          alignment: Alignment.topRight,
                          child: AppText.title18(
                            '${context.localization.categories.theLatestInPrefix} ${_category.displayName}' ,
                            maxLines: 1,
                          ),
                        ),
                        TrendingArticlesSectionWidget(
                          articles: isTrendingArticles
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                      ]);
                    }

                    //TODO WTF IS THIS there's no declartion for _toDisplay or _reelsArticles
                    /*_toDisplay.add(// Begin: Editor Choice
                        const EditorChoiceSection()
                        // End: Editor Choice
                        );

                    if(_reelsArticles.isNotEmpty){
                      _toDisplay.addAll([
                        ReelsSection(
                          reels: reelsArticles
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                      ]);
                    }*/

                    if(allArticles.isNotEmpty){
                      toDisplay.addAll([
                        Container(
                          padding: const EdgeInsets.only(right: 16.0,bottom: 16.0),
                          alignment: Alignment.topRight,
                          child: AppText.title18(
                            context.localization.articles.allArticles,
                            maxLines: 1,
                          ),
                        ),
                        TrendingArticlesSectionWidget(
                          articles: allArticles
                        )
                      ]);
                    }

                    return Column(
                      children: toDisplay,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

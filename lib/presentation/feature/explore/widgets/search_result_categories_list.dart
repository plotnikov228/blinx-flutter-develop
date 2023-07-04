import 'package:blinx/domain/entities/category.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/feature/explore/cubit/explore_all_categories_cubit.dart';
import 'package:blinx/presentation/feature/explore/cubit/explore_search_cubit.dart';
import 'package:blinx/presentation/feature/home/category_details/widgets/category_chip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultCategoriesList extends StatelessWidget {
  const SearchResultCategoriesList(this.parentContext, {Key? key})
      : super(key: key);

  final BuildContext parentContext;

  void _setActiveCategoryIndex(
    BuildContext context, {
    required int index,
    required String categoryName,
  }) {
    context.read<ExploreAllCategoriesCubit>().setSelectedIndex(index);
    parentContext.read<ExploreSearchCubit>().searchArticlesWithCategories(
          categories: categoryName,
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExploreAllCategoriesCubit, ExploreAllCategoriesState>(
      builder: (context, state) {
        return SizedBox(
            height: 32,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.categoriesList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsetsDirectional.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      if (index == 0)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: GestureDetector(
                            onTap: () => _setActiveCategoryIndex(
                              context,
                              index: -1,
                              categoryName: '',
                            ),
                            child: CategoryChip(
                              category: Category.all(
                                label:
                                    context.localization.explore.allCategories,
                              ),
                              isSelected: state.selectedCategoryIndex == -1,
                            ),
                          ),
                        ),
                      GestureDetector(
                        onTap: () => _setActiveCategoryIndex(context,
                            index: index,
                            categoryName: state.categoriesList[index].name),
                        child: CategoryChip(
                          category: state.categoriesList[index],
                          isSelected: index == state.selectedCategoryIndex,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ));
      },
    );
  }
}

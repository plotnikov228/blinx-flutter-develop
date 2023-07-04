import 'package:auto_route/auto_route.dart';
import 'package:blinx/domain/entities/category.dart';
import 'package:blinx/presentation/feature/explore/widgets/explore_category_card.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CategoriesStaggeredGridView extends StatelessWidget {
  const CategoriesStaggeredGridView({
    Key? key,
    required this.categoriesData,
  }) : super(key: key);
  final List<Category> categoriesData;

  void onItemSelected(BuildContext context, Category category) =>
      context.navigateTo(CategoryDetailsScreenRoute(category: category));

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      mainAxisSpacing: 12,
      itemCount: categoriesData.length,
      itemBuilder: (context, index) {
        final category = categoriesData[index];
        return SizedBox(
          child: GestureDetector(
            onTap: () => onItemSelected(context,category),
            child: ExploreCategoryCard(category: category),
          ),
        );
      }, staggeredTileBuilder: (int index) {
      return StaggeredTile.count(1, index.isEven ? 1.25 : 0.85);
    },
    );
  }
}

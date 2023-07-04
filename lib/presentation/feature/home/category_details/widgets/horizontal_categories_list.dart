import 'package:blinx/domain/entities/category.dart';
import 'package:blinx/presentation/feature/home/category_details/widgets/category_chip.dart';
import 'package:flutter/material.dart';

class HorizontalCategoriesList extends StatelessWidget {
  const HorizontalCategoriesList({
    Key? key,
    required this.categories,
    required this.selectedCategory,
    required this.onCategorySelected,
    this.scrollController,
  }) : super(key: key);

  final List<Category> categories;
  final Category selectedCategory;
  final ValueChanged<Category> onCategorySelected;
  final ScrollController? scrollController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final category = categories[index];
          final isSelected = selectedCategory.id == category.id;
          return Padding(
            padding: EdgeInsetsDirectional.only(
              end: 16,
              start: index == 0 ? 16 : 0,
            ),
            child: GestureDetector(
              onTap: () => onCategorySelected(category),
              child: Center(
                child: CategoryChip(
                  category: category,
                  isSelected: isSelected,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

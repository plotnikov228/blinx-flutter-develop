import 'package:blinx/domain/entities/category.dart';
import 'package:blinx/presentation/feature/home/profile/preferences/interests_tab/ui/interest_category_chip.dart';
import 'package:flutter/material.dart';

class InterestsSection extends StatelessWidget {
  const InterestsSection({super.key, required this.categories});

  final List<Category> categories;

  @override
  Widget build(BuildContext context) {
    if (categories.isEmpty) {
      return const SizedBox.shrink();
    }

    return Wrap(
      spacing: 8,
      runSpacing: 8,
      alignment: WrapAlignment.start,
      children: categories
          .map((category) => InterestCategoryChip(category: category))
          .toList(),
    );
  }
}

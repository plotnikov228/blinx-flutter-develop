import 'package:blinx/domain/entities/category.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class CategoryChip extends StatelessWidget {
  const CategoryChip({
    Key? key,
    required this.category,
    required this.isSelected,
  }) : super(key: key);

  final Category category;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final radius = BorderRadius.circular(20);
    const padding = EdgeInsets.fromLTRB(12, 4, 12, 4);

    Widget child = Center(
      child: AppText.body13w300(
        category.displayName,
        color: isSelected ? colors.white : colors.text,
      ),
    );

    if (!isSelected) {
      return OutlineGradientButton(
        strokeWidth: 2,
        padding: padding,
        radius: radius.bottomLeft,
        gradient: category.gradientFromColorString,
        child: child,
      );
    }

    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: colors.primary,
        borderRadius: radius,
        gradient: category.gradientFromColorString,
      ),
      child: child,
    );
  }
}

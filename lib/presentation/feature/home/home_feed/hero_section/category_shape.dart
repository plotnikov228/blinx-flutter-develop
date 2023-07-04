import 'package:blinx/domain/entities/category.dart';
import 'package:flutter/material.dart';

class CategoryShape extends StatelessWidget {
  const CategoryShape({
    Key? key,
    this.category,
  }) : super(key: key);

  final Category? category;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 14,
      decoration: BoxDecoration(
        gradient: category?.gradientFromColorString ??
            Category.defaults().gradientFromColorString,
        borderRadius: const BorderRadiusDirectional.only(
          topStart: Radius.circular(18),
        ),
      ),
    );
  }
}

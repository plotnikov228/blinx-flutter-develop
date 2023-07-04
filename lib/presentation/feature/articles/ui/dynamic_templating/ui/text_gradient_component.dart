import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/domain/entities/component.dart';
import 'package:blinx/presentation/resources/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:gradient_ui_widgets/text/gradient_text.dart';

class TextGradientComponent extends StatelessWidget {
  const TextGradientComponent(
      {super.key, required this.component, required this.article});
  final Article article;
  final Component component;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Stack(
        children: [
          GradientText(
            component.data.content,
            style: AppTextStyles.headlineLarge24,
            gradient: article.categories.first.gradientFromColorString,
            textAlign: TextAlign.center,
          ),
          SelectableText(
            component.data.content,
            style: AppTextStyles.headlineLarge24.copyWith(
              color: Colors.transparent
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

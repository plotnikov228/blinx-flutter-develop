import 'package:blinx/domain/entities/article.dart';
import 'package:blinx/domain/entities/component.dart';
import 'package:blinx/presentation/resources/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:gradient_ui_widgets/text/gradient_text.dart';

class BlockQuoteComponent extends StatelessWidget {
  const BlockQuoteComponent(
      {super.key, required this.component, required this.article});
  final Article article;
  final Component component;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Row(
            children: [
              Text(
                '\u201c',
                style: AppTextStyles.headlineLarge32.copyWith(fontSize: 40),
              ),
            ],
          ),
        ),
        Positioned(
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              const SizedBox(
                height: 8,
              ),
              Stack(
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
              const SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Row(
            children: [
              const Spacer(),
              Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()..scale(-1.0, 1.0, 1.0),
                child: Text(
                  '\u201e',
                  style: AppTextStyles.headlineLarge32.copyWith(fontSize: 40,),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

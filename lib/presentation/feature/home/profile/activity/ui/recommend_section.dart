import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/feature/home/profile/activity/ui/recommend_chip.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class RecommendSection extends StatelessWidget {
  RecommendSection({super.key, required this.isCategoryRecommendation});

  final bool isCategoryRecommendation;

  final _recommendations = [
    'football',
    'music',
    'iccworldcup2022',
    'championsleague',
    'tennis',
    'DIY',
    'cricket',
    'badminton',
    'technology',
  ];

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.activity;
    return Column(
      children: [
        AppText.body300(
          i18n.recommendedForYou,
          fontSize: 32,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        AppText.normal(
          i18n.recommendationMessage,
          fontSize: 16,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          alignment: WrapAlignment.start,
          children: _recommendations
              .map(
                (e) => isCategoryRecommendation
                    ? RecommendChip.category(e)
                    : RecommendChip(text: e),
              )
              .toList(),
        )
      ],
    );
  }
}

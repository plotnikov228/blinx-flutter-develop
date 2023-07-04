import 'dart:math';

import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class RecommendChip extends StatelessWidget {
  RecommendChip({super.key, required this.text});

  // Remove this variable once cubit implemented
  final rnd = Random();

  // Remove this variable once cubit implemented
  final _gradientColors = [
    [Colors.orange, Colors.deepOrange],
    [Colors.blue, Colors.blueAccent],
    [Colors.red, Colors.redAccent],
    [Colors.green, Colors.teal],
  ];

  final String text;

  factory RecommendChip.category(String text) {
    return RecommendChip(text: '#$text');
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6.0),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: _gradientColors[rnd.nextInt(4)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
          child: AppText.body600(
            text,
            fontSize: 20,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

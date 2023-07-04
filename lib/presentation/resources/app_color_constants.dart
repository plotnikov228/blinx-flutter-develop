import 'package:flutter/material.dart';

class AppColorConstants {
  static const LinearGradient greyGradient = LinearGradient(
    colors: [
      Color(0xFF555555),
      Color(0xFF444444),
    ],
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
  );

  static const LinearGradient orangeGradient = LinearGradient(
    colors: [
      Color(0xFFFF9D4A),
      Color(0xFFFF0000),
    ],
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
  );

  static const LinearGradient cherryGradient = LinearGradient(
    colors: [
      Color(0xFFFF0D48),
      Color(0xFFFF79DB),
    ],
  );

  // TODO: add other color gradients
}

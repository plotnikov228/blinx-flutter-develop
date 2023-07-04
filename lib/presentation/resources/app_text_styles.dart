import 'package:blinx/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static const headline1 = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 34,
  );
  static const body1 = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 14,
  );

  static const primary = TextStyle(
    fontWeight: FontWeight.w700,
    fontFamily: FontFamily.blinxBoutros,
  );

  static const normal = TextStyle(
    fontWeight: FontWeight.w400,
    fontFamily: FontFamily.blinxBoutros,
    fontSize: 16,
  );

  static const body = TextStyle(
    fontFamily: FontFamily.blinxBoutros,
    fontWeight: FontWeight.w300,
    fontSize: 14,
  );

  static const body500Font20 = TextStyle(
    fontFamily: FontFamily.blinxBoutros,
    fontWeight: FontWeight.w500,
    fontSize: 20,
  );

  static final body500 =
      body.copyWith(fontWeight: FontWeight.w500, fontSize: 13);

  static final body300Font13 =
      body.copyWith(fontWeight: FontWeight.w300, fontSize: 13);

  static final body700Font13 =
      body.copyWith(fontWeight: FontWeight.w700, fontSize: 13);

  static final body700Font16 =
      body.copyWith(fontWeight: FontWeight.w700, fontSize: 16);

  static final body700Font10 =
      body.copyWith(fontWeight: FontWeight.w700, fontSize: 10);

  static const bodySmall = TextStyle(
    fontFamily: FontFamily.blinxBoutros,
    fontWeight: FontWeight.w300,
    fontSize: 12,
  );

  static const body13w300 = TextStyle(
    fontFamily: FontFamily.blinxBoutros,
    fontWeight: FontWeight.w300,
    fontSize: 13,
  );

  static const bodyExtraSmall = TextStyle(
    fontFamily: FontFamily.blinxBoutros,
    fontWeight: FontWeight.w500,
    fontSize: 10,
  );

  static const titleSmall = TextStyle(
    fontWeight: FontWeight.w500,
    fontFamily: FontFamily.blinxBoutros,
    fontSize: 13,
  );

  static const subtitle = TextStyle(
    fontFamily: FontFamily.blinxBoutros,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

  static const TextStyle title = TextStyle(
    fontFamily: FontFamily.blinxBoutros,
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );

  static const TextStyle title18 = TextStyle(
    fontFamily: FontFamily.blinxBoutros,
    fontWeight: FontWeight.w500,
    fontSize: 18,
  );

  static const TextStyle titleLight = TextStyle(
    fontFamily: FontFamily.blinxBoutros,
    fontWeight: FontWeight.w300,
    fontSize: 18,
  );

  static final TextStyle titleBold = title.copyWith(
    fontWeight: FontWeight.bold,
  );

  static final TextStyle titleBold24 = titleBold.copyWith(
    fontWeight: FontWeight.bold,
    fontSize: 24,
  );

  static final TextStyle titleBold22 = titleBold.copyWith(
    fontWeight: FontWeight.bold,
    fontSize: 22,
  );

  static const TextStyle button = TextStyle(
    fontFamily: FontFamily.blinxBoutros,
    fontWeight: FontWeight.w800,
    fontSize: 14,
  );

  static const TextStyle textUnderlined = TextStyle(
    fontFamily: FontFamily.blinxBoutros,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    decoration: TextDecoration.underline,
  );

  static const TextStyle headlineLarge = TextStyle(
    fontFamily: FontFamily.blinxBoutros,
    fontWeight: FontWeight.w700,
    fontSize: 34,
  );

  static const TextStyle body800 = TextStyle(
    fontFamily: FontFamily.blinxBoutros,
    fontWeight: FontWeight.w800,
    fontSize: 18,
  );

  static const TextStyle body600Font20 = TextStyle(
    fontFamily: FontFamily.blinxBoutros,
    fontWeight: FontWeight.w600,
    fontSize: 20,
  );

  static const TextStyle body600 = TextStyle(
    fontFamily: FontFamily.blinxBoutros,
    fontWeight: FontWeight.w600,
    fontSize: 20,
  );

  static const TextStyle body300 = TextStyle(
    fontFamily: FontFamily.blinxBoutros,
    fontWeight: FontWeight.w300,
    fontSize: 20,
  );

  static const body300Font20 = TextStyle(
    fontFamily: FontFamily.blinxBoutros,
    fontWeight: FontWeight.w300,
    fontSize: 20,
  );

  static final TextStyle headlineLarge32 = headlineLarge.copyWith(fontSize: 28);

  static final TextStyle headlineLarge24 = headlineLarge.copyWith(fontSize: 24);

  static final TextStyle headlineBold = headlineLarge.copyWith(fontSize: 27);

  static final TextStyle headline24Bold = headlineLarge.copyWith(fontSize: 20);

  static final TextStyle headlineBold18 = headlineLarge.copyWith(fontSize: 18);

  static final TextStyle headlineSmall = headlineLarge.copyWith(fontSize: 16);

  static final TextStyle subtitle15 = subtitle.copyWith(fontSize: 15);

  static final TextStyle titleBold17 = title.copyWith(fontSize: 17);

  static final TextStyle body400Font18 = normal.copyWith(fontSize: 18);
}

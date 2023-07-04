import 'package:blinx/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:flutter/services.dart';

ThemeData getAppTheme(Brightness brightness) {
  final colors = brightness == Brightness.light ? colorsLight : colorsDark;

  return ThemeData(
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: brightness,
      ),
    ),
    brightness: brightness,
    fontFamily: FontFamily.blinxBoutros,
    scaffoldBackgroundColor: colors.background,
  );
}

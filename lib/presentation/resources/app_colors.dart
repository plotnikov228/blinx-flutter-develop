import 'package:flutter/material.dart';

class AppColors {
  final Color background;
  final Color backgroundReversed;
  final Color bottomSheetBackground;
  final Color inputBorder;
  final Color inputBorderGrey;
  final Color inputBackground;
  final Color surface;
  final Color labelPrimary;
  final Color textRed;
  final Color primary;
  final Color accent;
  final Color grey;
  final Color green;
  final Color text;
  final Color lightText;
  final Color sunset1;
  final Color sunset2;
  final Color black;
  final Color white;
  final Color darkGrey;
  final Color blue;
  final Color orange;
  final Color deepOrange;
  final Color divider;
  final Color greyText;
  final Color darkBlue;
  final Color grass1;
  final Color grass2;
  final Color red1;
  final Color red2;
  final Color blue1;
  final Color blue2;
  final Color orange1;
  final Color orange2;
  final Color textGrey;
  final Color switchTrack;

  Color get error => textRed;

  const AppColors({
    required this.background,
    required this.backgroundReversed,
    required this.bottomSheetBackground,
    required this.inputBorder,
    required this.inputBorderGrey,
    required this.inputBackground,
    required this.surface,
    required this.grey,
    required this.green,
    required this.labelPrimary,
    required this.textRed,
    required this.primary,
    required this.accent,
    required this.text,
    required this.lightText,
    required this.sunset1,
    required this.sunset2,
    required this.black,
    required this.white,
    required this.darkGrey,
    required this.blue,
    required this.orange,
    required this.deepOrange,
    required this.divider,
    required this.greyText,
    required this.darkBlue,
    required this.grass1,
    required this.grass2,
    required this.red1,
    required this.red2,
    required this.blue1,
    required this.blue2,
    required this.orange1,
    required this.orange2,
    required this.textGrey,
    required this.switchTrack,
  });
}

const colorsLight = AppColors(
  background: Colors.white,
  backgroundReversed: Colors.black,
  bottomSheetBackground: Color(0xFFDEDEDE),
  inputBorder: Color(0xFF3E3E3E),
  inputBackground: Color(0xFFEDF2F7),
  surface: Colors.white,
  grey: Colors.grey,
  primary: Colors.white,
  accent: Colors.blueAccent,
  labelPrimary: Colors.black,
  textRed: Color(0xFFEC0505),
  green: Color(0xFF18A169),
  text: Colors.black,
  lightText: Color(0xFF4E4E4E),
  sunset1: Color(0xFFDAC4FD),
  sunset2: Color(0xFF137AFF),
  black: Color(0xFF030303),
  white: Colors.white,
  darkGrey: Color(0xFFDFDFDF),
  blue: Color(0xFF0360F3),
  orange: Color(0xFFFF0000),
  divider: Color(0xFF454545),
  greyText: Color(0xFF626262),
  deepOrange: Color(0xFFFF9D4A),
  darkBlue: Color(0xFF0066FF),
  grass1: Color(0xFFA6D65E),
  grass2: Color(0xFF4AB272),
  red1: Color(0xFFFF2F2F),
  red2: Color(0xFF9B0505),
  blue1: Color(0xFF0AE8FF),
  blue2: Color(0xFF0043EF),
  orange1: Color(0xFFFF9D4A),
  orange2: Color(0xFFFF0000),
  inputBorderGrey: Color(0xFF191919),
  textGrey: Color(0xFF7E7E7E),
  switchTrack: Color(0xFFCBD5E0),
);

const colorsDark = AppColors(
  background: Colors.black,
  backgroundReversed: Colors.white,
  bottomSheetBackground: Color(0xFF212121),
  inputBorder: Color(0xFF7E7E7E),
  inputBackground: Color(0xFF272727),
  surface: Color(0xFF222222),
  grey: Colors.grey,
  primary: Colors.white,
  accent: Colors.lightBlueAccent,
  labelPrimary: Colors.white,
  textRed: Color(0xFFEC0505),
  green: Color(0xFF18A169),
  text: Colors.white,
  lightText: Color(0xFF4E4E4E),
  sunset1: Color(0xFFDAC4FD),
  sunset2: Color(0xFF137AFF),
  black: Color(0xFF030303),
  white: Colors.white,
  darkGrey: Color(0xFF202020),
  blue: Color(0xFF0360F3),
  orange: Color(0xFFFF0000),
  divider: Color(0xFF454545),
  greyText: Color(0xFF626262),
  deepOrange: Color(0xFFFF9D4A),
  darkBlue: Color(0xFF0066FF),
  grass1: Color(0xFFA6D65E),
  grass2: Color(0xFF4AB272),
  red1: Color(0xFFFF2F2F),
  red2: Color(0xFF9B0505),
  blue1: Color(0xFF0AE8FF),
  blue2: Color(0xFF0043EF),
  orange1: Color(0xFFFF9D4A),
  orange2: Color(0xFFFF0000),
  inputBorderGrey: Color(0xFF191919),
  textGrey: Color(0xFF7E7E7E),
  switchTrack: Color(0xFF4A4A4C),
);

extension AppColorsExtension on BuildContext {
  AppColors get colors {
    final brightness = Theme.of(this).brightness;
    switch (brightness) {
      case Brightness.light:
        return colorsLight;
      case Brightness.dark:
        return colorsDark;
      default:
        return colorsLight;
    }
  }
}

abstract class AppGradients {
  static Gradient getFromColorString(String colorString) {
    switch (colorString) {
      case 'orange':
        return orange;
      case 'grass':
        return grass;
      case 'cherry':
        return cherry;
      case 'violet':
        return violet;
      case 'sunset':
        return sunset;
      case 'peach':
        return peach;
      case 'ocean':
        return ocean;
      case 'peachyFlip':
        return peachyFlip;
      case 'grandAfrika':
        return grandAfrika;
      case 'grandGreen':
        return grandGreen;
      case 'grandMarine':
        return grandMarine;
      case 'grandMiami':
        return grandMiami;
      case 'grandRose':
        return grandRose;
      case 'hotPink':
        return hotPink;
      case 'ibiza':
        return ibiza;
      case 'belowZero':
        return belowZero;
      case 'pinkWash':
        return pinkWash;
      case 'impact':
        return impact;
      case 'northernLights':
        return northernLights;
      default:
        return grandMarine;
    }
  }

  static List<Gradient> gradients = [
    orange,
    grass,
    cherry,
    violet,
    pinky,
    sunset,
    peach,
    ocean,
    peachyFlip,
    grandAfrika,
    grandGreen,
    grandMarine,
    grandMiami,
    grandRose,
    hotPink,
    ibiza,
    belowZero,
    pinkWash,
    velvetRope,
    impact,
    northernLights
  ];

  static const LinearGradient orange = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [.02555, 1.0],
    colors: [
      Color(0xFFFF0000),
      Color(0xFFFF9D4A),
    ],
  );
  static const LinearGradient grass = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [.05, 1.0],
    colors: [
      Color(0xFF4AB272),
      Color(0xFFA6D65E),
    ],
  );
  static const LinearGradient cherry = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [.2555, 1.0],
    colors: [
      Color(0xFFFF0D48),
      Color(0xFFFF79DB),
    ],
  );
  static const LinearGradient violet = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [.255, 1.0],
    colors: [
      Color(0xFF6618C2),
      Color(0xFF3470EE),
    ],
  );
  static const LinearGradient pinky = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [.2555, 1.0],
    colors: [
      Color(0xFFFF3C6D),
      Color(0xFFFC9FFF),
    ],
  );
  static const LinearGradient sunset = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [-1.94, 1.0],
    colors: [
      Color(0xFF137AFF),
      Color(0xFFDAC4FD),
    ],
  );
  static const LinearGradient peach = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    stops: [-2.15, .955],
    colors: [
      Color(0xFFFF5A7A),
      Color(0xFFFF9737),
    ],
  );
  static const LinearGradient ocean = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.21, .999],
    colors: [
      Color(0xFF0043EF),
      Color(0xFF0AE8FF),
    ],
  );
  static const LinearGradient peachyFlip = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.055, 1.0],
    colors: [
      Color(0xFFFF5A7A),
      Color(0xFFFF9737),
    ],
  );

  static const LinearGradient grandMarine = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.2555, .999],
    colors: [
      Color(0xFF00EFF7),
      Color(0xFF00B7FF),
    ],
  );

  static const LinearGradient grandMiami = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.2555, .999],
    colors: [
      Color(0xFFE75D84),
      Color(0xFFFF635F),
    ],
  );

  static const LinearGradient grandAfrika = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.2555, .999],
    colors: [
      Color(0xFFFF9900),
      Color(0xFFF24C35),
    ],
  );

  static const LinearGradient grandRose = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.2555, .999],
    colors: [
      Color(0xFFEAA0FF),
      Color(0xFFF855CD),
    ],
  );

  static const LinearGradient grandGreen = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.2555, .999],
    colors: [
      Color(0xFF7DB74D),
      Color(0xFF00A780),
    ],
  );

  static const LinearGradient hotPink = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.2555, .478],
    colors: [
      Color(0xFFEAA0FF),
      Color(0xFFF855CD),
    ],
  );

  static const LinearGradient ibiza = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.2555, .937],
    colors: [
      Color(0xFFFF9900),
      Color(0xFFF24C35),
    ],
  );

  static const LinearGradient belowZero = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.3974, .7655],
    colors: [
      Color(0xFF08EAFF),
      Color(0xFF0043EF),
    ],
  );

  static const LinearGradient pinkWash = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.132, .4423],
    colors: [
      Color(0xFF7FB3F9),
      Color(0xFFD7BBFA),
    ],
  );

  static const LinearGradient velvetRope = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.2408, .5955],
    colors: [
      Color(0xFF3470EE),
      Color(0xFF6618C2),
    ],
  );

  static const LinearGradient impact = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.099, .9999],
    colors: [
      Color(0xFFFF635F),
      Color(0xFFEA0000),
    ],
  );

  static const LinearGradient northernLights = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.1586, .9258],
    colors: [
      Color(0xFF1BFFC8),
      Color(0xFF4CD964),
    ],
  );
}

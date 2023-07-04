import 'package:auto_size_text/auto_size_text.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:flutter/material.dart';

/// A custom [Text] widget with the styles based in the app design.
///
/// Most of the text styles already exists in the default Flutter theming
/// system. This class is used to avoid code duplication and is a easy way
/// to access the most used text styles across the project.
class AppText extends StatelessWidget {
  const AppText._(
    this._textStyle, {
    Key? key,
    this.color,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.softWrap,
    required this.data,
    this.autoSize = false,
  }) : super(key: key);

  factory AppText.titleBold17(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
  }) {
    return AppText._(
      AppTextStyles.titleBold17,
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }

  factory AppText.title18(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
  }) {
    return AppText._(
      AppTextStyles.title18,
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }

  factory AppText.subtitle15(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
  }) {
    return AppText._(
      AppTextStyles.subtitle15,
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }

  factory AppText.headlineSmall(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
  }) {
    return AppText._(
      AppTextStyles.headlineSmall,
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }

  factory AppText.headlineLarge(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    bool autoSize = false,
  }) {
    return AppText._(
      AppTextStyles.headlineLarge,
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      maxLines: maxLines,
      autoSize: autoSize,
    );
  }

  factory AppText.headlineLarge32(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    bool autoSize = false,
    int? maxLines,
  }) {
    return AppText._(
      AppTextStyles.headlineLarge32,
      key: key,
      data: data,
      color: color,
      maxLines: maxLines,
      autoSize: autoSize,
      textAlign: textAlign,
    );
  }

  factory AppText.headlineLarge28(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    bool autoSize = false,
    int? maxLines,
  }) {
    return AppText._(
      AppTextStyles.headlineLarge32,
      key: key,
      data: data,
      color: color,
      maxLines: maxLines,
      autoSize: autoSize,
      textAlign: textAlign,
    );
  }

  factory AppText.headlineLarge24(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
  }) {
    return AppText._(
      AppTextStyles.headlineLarge24,
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
    );
  }

  factory AppText.headlineBold(
    String data, {
    Key? key,
    Color? color,
    int? maxLines,
    bool autoSize = false,
    TextAlign? textAlign,
  }) {
    return AppText._(
      AppTextStyles.headlineBold,
      key: key,
      data: data,
      color: color,
      autoSize: autoSize,
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }

  factory AppText.headlineBold18(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
  }) {
    return AppText._(
      AppTextStyles.headlineBold18,
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }

  factory AppText.subtitle(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
  }) {
    return AppText._(
      AppTextStyles.subtitle,
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
    );
  }

  factory AppText.titleBold(
    String data, {
    Key? key,
    Color? color,
    int? maxLines,
    TextAlign? textAlign,
    bool autoSize = false,
    TextOverflow? overflow,
  }) {
    return AppText._(
      AppTextStyles.titleBold,
      key: key,
      data: data,
      color: color,
      autoSize: autoSize,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  factory AppText.titleLight(
    String data, {
    Key? key,
    Color? color,
    int? maxLines,
    TextAlign? textAlign,
    bool autoSize = false,
    TextOverflow? overflow,
  }) {
    return AppText._(
      AppTextStyles.titleLight,
      key: key,
      data: data,
      color: color,
      autoSize: autoSize,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  factory AppText.headline24Bold(
    String data, {
    Key? key,
    Color? color,
    int? maxLines,
    TextAlign? textAlign,
    bool autoSize = false,
    TextOverflow? overflow,
  }) {
    return AppText._(
      AppTextStyles.headline24Bold,
      key: key,
      data: data,
      color: color,
      autoSize: autoSize,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  factory AppText.body300Font13(
    String data, {
    Key? key,
    Color? color,
    int? maxLines,
    TextAlign? textAlign,
    TextOverflow? overflow,
  }) {
    return AppText._(
      AppTextStyles.body300Font13,
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  factory AppText.body700Font13(
    String data, {
    Key? key,
    Color? color,
    int? maxLines,
    bool autoSize = false,
    TextAlign? textAlign,
    TextOverflow? overflow,
  }) {
    return AppText._(
      AppTextStyles.body700Font13,
      key: key,
      data: data,
      color: color,
      autoSize: autoSize,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  factory AppText.titleBold24(
    String data, {
    Key? key,
    Color? color,
    int? maxLines,
    bool autoSize = false,
    TextAlign? textAlign,
    TextOverflow? overflow,
  }) {
    return AppText._(
      AppTextStyles.titleBold24,
      key: key,
      data: data,
      color: color,
      autoSize: autoSize,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  factory AppText.titleBold22(
    String data, {
    Key? key,
    Color? color,
    int? maxLines,
    TextAlign? textAlign,
    TextOverflow? overflow,
  }) {
    return AppText._(
      AppTextStyles.titleBold22,
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  factory AppText.title(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    bool autoSize = false,
    TextOverflow? overflow,
  }) {
    return AppText._(
      AppTextStyles.title,
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      autoSize: autoSize,
    );
  }

  factory AppText.body(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
    double? fontSize,
    bool? softWrap,
    bool? autoSize,
  }) {
    return AppText._(
      AppTextStyles.body.copyWith(fontSize: fontSize),
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      softWrap: softWrap,
      autoSize: autoSize ?? false,
    );
  }

  factory AppText.body500(
    String data, {
    Key? key,
    Color? color,
    double? fontSize,
    int? maxLines,
    TextAlign? textAlign,
    TextOverflow? overflow,
    bool? softWrap,
    bool? autoSize,
    double? letterSpacing,
  }) {
    return AppText._(
      AppTextStyles.body500.copyWith(
        fontSize: fontSize,
        letterSpacing: letterSpacing,
      ),
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      softWrap: softWrap,
      autoSize: autoSize ?? false,
    );
  }

  factory AppText.body700Font16(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
    bool autoSize = false,
  }) {
    return AppText._(
      AppTextStyles.body700Font16,
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      autoSize: autoSize,
    );
  }

  factory AppText.body700Font10(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
  }) {
    return AppText._(
      AppTextStyles.body700Font10,
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
    );
  }

  factory AppText.normal(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
    double? fontSize,
    bool? softWrap,
    bool? autoSize,
  }) {
    return AppText._(
      AppTextStyles.normal.copyWith(fontSize: fontSize),
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      softWrap: softWrap,
      autoSize: autoSize ?? false,
    );
  }

  factory AppText.body600(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
    double? fontSize,
    bool? softWrap,
    bool? autoSize,
  }) {
    return AppText._(
      AppTextStyles.body600.copyWith(fontSize: fontSize),
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      softWrap: softWrap,
      autoSize: autoSize ?? false,
    );
  }

  factory AppText.body300(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
    double? fontSize,
    bool? softWrap,
    bool? autoSize,
  }) {
    return AppText._(
      AppTextStyles.body300.copyWith(fontSize: fontSize),
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      softWrap: softWrap,
      autoSize: autoSize ?? false,
    );
  }

  factory AppText.button(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    TextOverflow? overflow,
    bool autoSize = false,
    int? maxLines,
  }) {
    return AppText._(
      AppTextStyles.button,
      key: key,
      data: data,
      color: color,
      autoSize: autoSize,
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: overflow,
    );
  }

  factory AppText.textUnderlined(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    TextOverflow? overflow,
    bool autoSize = false,
    int? maxLines,
  }) {
    return AppText._(
      AppTextStyles.textUnderlined,
      key: key,
      data: data,
      color: color,
      autoSize: autoSize,
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: overflow,
    );
  }

  factory AppText.buttonSmall(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
  }) {
    return AppText._(
      AppTextStyles.bodySmall,
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
    );
  }

  factory AppText.bodyExtraSmall(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
  }) {
    return AppText._(
      AppTextStyles.bodyExtraSmall,
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
    );
  }

  factory AppText.bodySmall(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
  }) {
    return AppText._(
      AppTextStyles.bodySmall,
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
    );
  }

  factory AppText.titleSmall(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
  }) {
    return AppText._(
      AppTextStyles.titleSmall,
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
    );
  }

  factory AppText.body13w300(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
  }) {
    return AppText._(
      AppTextStyles.body13w300,
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
    );
  }

  factory AppText.primary(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
  }) {
    return AppText._(
      AppTextStyles.primary,
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
    );
  }

  final TextStyle _textStyle;
  final String data;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final bool? softWrap;
  final bool autoSize;

  @override
  Widget build(BuildContext context) {
    final textColor = color ?? context.colors.text;
    final effectiveTextStyle = _textStyle.copyWith(
      color: textColor,
    );

    if (autoSize) {
      return AutoSizeText(
        data,
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
        softWrap: softWrap,
        style: effectiveTextStyle,
      );
    }

    return Text(
      data,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
      softWrap: softWrap,
      style: effectiveTextStyle,
    );
  }

  factory AppText.body500Font20(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
    bool autoSize = false,
  }) {
    return AppText._(
      AppTextStyles.body500Font20,
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      autoSize: autoSize,
    );
  }

  factory AppText.body800(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
    double? fontSize,
    bool? softWrap,
    bool? autoSize,
  }) {
    return AppText._(
      AppTextStyles.body800.copyWith(fontSize: fontSize),
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      softWrap: softWrap,
      autoSize: autoSize ?? false,
    );
  }

  factory AppText.body600Font20(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
    bool autoSize = false,
  }) {
    return AppText._(
      AppTextStyles.body600Font20,
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      autoSize: autoSize,
    );
  }

  factory AppText.body300Font20(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
    bool autoSize = false,
  }) {
    return AppText._(
      AppTextStyles.body300Font20,
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      autoSize: autoSize,
    );
  }
}

import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

enum _ButtonStyle {
  rounded,
  roundedSmall,
  roundedOutlined,
  text,
  textUnderlined,
  small,
}

/// A custom button widget based on the UI guidelines.
///
/// You choose the button style based on the named constructor.
class AppButton extends StatelessWidget {
  const AppButton._({
    Key? key,
    this.leadingIcon,
    required this.title,
    required this.textColor,
    required this.onPressed,
    required this.buttonStyle,
    this.backgroundColor,
    this.borderColor,
    this.isLoading = false,
  }) : super(key: key);

  /// Builds a rounded button with the background color
  /// defaulting to the primary color.
  factory AppButton.rounded({
    required String title,
    Widget? leading,
    Color? backgroundColor,
    Color? textColor,
    bool isLoading = false,
    required VoidCallback? onPressed,
  }) {
    return AppButton._(
      title: title,
      leadingIcon: leading,
      textColor: textColor,
      onPressed: onPressed,
      isLoading: isLoading,
      backgroundColor: backgroundColor,
      buttonStyle: _ButtonStyle.rounded,
    );
  }

  /// Builds a rounded button with border and transparent background color.
  factory AppButton.roundedOutlined({
    bool isLoading = false,
    required String title,
    Color? borderColor,
    Color? textColor,
    required VoidCallback? onPressed,
  }) {
    if (isLoading) {
      return AppButton.rounded(
        title: title,
        onPressed: onPressed,
        isLoading: isLoading,
        textColor: textColor,
      );
    }

    return AppButton._(
      title: title,
      textColor: textColor,
      onPressed: onPressed,
      borderColor: borderColor,
      buttonStyle: _ButtonStyle.roundedOutlined,
    );
  }

  /// Builds a rounded button with slim text instead of bold text,
  /// and the background color defaults to the primary color.
  factory AppButton.roundedSmall({
    required String title,
    Widget? leadingIcon,
    Color? backgroundColor,
    Color? textColor,
    required VoidCallback? onPressed,
  }) {
    return AppButton._(
      title: title,
      textColor: textColor,
      onPressed: onPressed,
      leadingIcon: leadingIcon,
      backgroundColor: backgroundColor,
      buttonStyle: _ButtonStyle.roundedSmall,
    );
  }

  /// Build a text button without a background color.
  factory AppButton.text({
    required String title,
    Color? textColor,
    required VoidCallback? onPressed,
  }) {
    return AppButton._(
      title: title,
      textColor: textColor,
      onPressed: onPressed,
      backgroundColor: null,
      buttonStyle: _ButtonStyle.text,
    );
  }

  factory AppButton.textUnderlined({
    required String title,
    Color? textColor,
    required VoidCallback? onPressed,
  }) {
    return AppButton._(
      title: title,
      textColor: textColor,
      onPressed: onPressed,
      backgroundColor: null,
      buttonStyle: _ButtonStyle.textUnderlined,
    );
  }

  factory AppButton.small({
    required String title,
    Color? textColor,
    Color? backgroundColor,
    required VoidCallback? onPressed,
  }) {
    return AppButton._(
      title: title,
      textColor: textColor,
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      buttonStyle: _ButtonStyle.small,
    );
  }

  final String title;
  final bool isLoading;
  final Color? textColor;
  final Color? borderColor;
  final Widget? leadingIcon;
  final Color? backgroundColor;
  final VoidCallback? onPressed;
  final _ButtonStyle buttonStyle;

  bool get enabled => onPressed != null;

  Widget _buildRoundedButton(BuildContext context, {isButtonSmall = false}) {
    final effectiveBackgroundColor = backgroundColor ?? context.colors.text;
    final effectiveTextColor = textColor ?? context.colors.background;
    var child = isLoading
        ? FittedBox(
            fit: BoxFit.fill,
            child: CircularProgressIndicator(
              color: context.colors.surface,
            ),
          )
        : AppText.button(
            title,
            autoSize: true,
            textAlign: TextAlign.center,
            color: enabled ? effectiveTextColor : context.colors.black,
          );

    final size =
        isLoading ? const Size(48, 44) : const Size(double.maxFinite, 44);

    var roundedButtonStyle = ButtonStyle(
      padding: isLoading
          ? MaterialStateProperty.all(const EdgeInsets.all(12))
          : null,
      textStyle: MaterialStateProperty.all(
          AppTextStyles.button.copyWith(color: Colors.red)),
      overlayColor: MaterialStateColor.resolveWith(
        (states) => isButtonSmall
            ? effectiveBackgroundColor.withOpacity(0.3)
            : effectiveBackgroundColor,
      ),
      minimumSize: MaterialStateProperty.all(size),
      maximumSize: MaterialStateProperty.all(size),
      backgroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) {
          return context.colors.inputBorder.withOpacity(.72);
        } else if (isLoading) {
          return effectiveBackgroundColor.withOpacity(.35);
        }
        return effectiveBackgroundColor;
      }),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
      elevation: MaterialStateProperty.resolveWith((states) {
        return 0.0;
      }),
    );

    if (leadingIcon != null) {
      child = ElevatedButton.icon(
        // Prevent calling the tap callback in a loading state
        onPressed: isLoading ? () {} : onPressed,
        style: roundedButtonStyle,
        icon: leadingIcon!,
        label: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: child,
              ),
            ),
          ],
        ),
      );
    } else {
      child = ElevatedButton(
        // Prevent calling the tap callback in a loading state
        onPressed: isLoading ? () {} : onPressed,
        style: roundedButtonStyle,
        child: child,
      );
    }

    return isLoading ? Center(child: child) : child;
  }

  Widget _buildTextButton(BuildContext context, {bool isUnderlined = false}) {
    final effectiveTextColor = textColor ?? context.colors.surface;

    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        overlayColor: MaterialStateColor.resolveWith(
          (states) => context.colors.primary.withOpacity(0.3),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
      ),
      child: !isUnderlined
          ? AppText.button(
              title,
              color: effectiveTextColor.withOpacity(enabled ? 1 : .5),
            )
          : AppText.textUnderlined(
              title,
              color: effectiveTextColor.withOpacity(enabled ? 1 : .5),
            ),
    );
  }

  Widget _buildRoundedOutlinedButton(BuildContext context) {
    final effectiveBorderColor = borderColor ?? context.colors.primary;
    final effectiveTextColor = textColor ?? context.colors.primary;
    final colorOpacity = onPressed == null ? 0.5 : 1.0;
    Widget child = AppText.button(
      title,
      autoSize: true,
      maxLines: 1,
      textAlign: TextAlign.center,
      color: effectiveTextColor.withOpacity(colorOpacity),
    );

    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0.0),
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
        overlayColor: MaterialStateColor.resolveWith(
          (states) => context.colors.primary.withOpacity(.1),
        ),
        minimumSize: MaterialStateProperty.all(
          const Size(double.maxFinite, 44),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(
              width: 2,
              color: effectiveBorderColor.withOpacity(colorOpacity),
            ),
          ),
        ),
      ),
      child: child,
    );
  }

  Widget _buildSmallButton(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100.0),
      child: Container(
        color: backgroundColor ?? context.colors.primary,
        height: 28,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
              onTap: onPressed,
              child: Center(
                child: AppText.body600(
                  title,
                  fontSize: 14,
                  color: textColor ?? context.colors.black,
                ),
              )),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    late Widget child;

    switch (buttonStyle) {
      case _ButtonStyle.rounded:
        child = _buildRoundedButton(context);
        break;
      case _ButtonStyle.roundedOutlined:
        child = _buildRoundedOutlinedButton(context);
        break;
      case _ButtonStyle.text:
        child = _buildTextButton(context);
        break;
      case _ButtonStyle.textUnderlined:
        child = _buildTextButton(context, isUnderlined: true);
        break;
      case _ButtonStyle.roundedSmall:
        child = _buildRoundedButton(context, isButtonSmall: true);
        break;
      case _ButtonStyle.small:
        child = _buildSmallButton(context);
        break;
    }
    return child;
  }
}

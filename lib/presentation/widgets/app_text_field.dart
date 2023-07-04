import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum AppTextFieldState {
  success,
  none,
}

class AppTextField extends StatefulWidget {
  const AppTextField({
    Key? key,
    this.onTap,
    this.controller,
    this.focusNode,
    this.showCursor = true,
    required this.labelText,
    this.errorText,
    this.keyboardType,
    this.enabled = true,
    this.readOnly = false,
    this.obscureText = false,
    this.suffix,
    this.suffixIcon,
    this.onChanged,
    this.onSubmitted,
    this.validator,
    this.maxLength,
    this.maxLines = 1,
    this.textAlign,
    this.formatters,
    this.textColor,
    this.capitalize = false,
    this.useDefaultLengthLimiterFormatter = false,
    this.padding = const EdgeInsets.all(0),
    this.hasError = false,
    this.hasCircularBorder = false,
    this.prefixIcon,
  }) : super(key: key);

  factory AppTextField.withState(
    BuildContext context, {
    bool enabled = true,
    bool capitalize = false,
    required String labelText,
    bool hasError = false,
    ValueChanged<String>? onChanged,
    required AppTextFieldState state,
    TextEditingController? controller,
  }) {
    return AppTextField(
      enabled: enabled,
      labelText: labelText,
      onChanged: onChanged,
      controller: controller,
      capitalize: capitalize,
      textColor: hasError ? context.colors.error : null,
      suffixIcon: _getStateRepresentation(context, state),
      padding: EdgeInsets.only(
        left: 24,
        right: state == AppTextFieldState.none ? 24 : 8,
      ),
    );
  }

  static Widget? _getStateRepresentation(
      BuildContext context, AppTextFieldState state) {
    switch (state) {
      case AppTextFieldState.success:
        return Icon(
          Icons.check_circle,
          size: 38,
          color: context.colors.green,
        );
      case AppTextFieldState.none:
        return null;
    }
  }

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String labelText;
  final String? errorText;
  final TextInputType? keyboardType;
  final bool enabled;
  final bool obscureText;
  final bool readOnly;
  final bool capitalize;
  final bool showCursor;
  final Widget? suffix;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final VoidCallback? onTap;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final FormFieldValidator? validator;
  final int? maxLength;
  final int maxLines;
  final EdgeInsets padding;
  final Color? textColor;
  final List<TextInputFormatter>? formatters;
  final bool useDefaultLengthLimiterFormatter;
  final bool hasError;
  final bool hasCircularBorder;
  final TextAlign? textAlign;
  static final defaultLengthLimitFormatter =
      LengthLimitingTextInputFormatter(100);

  static TextInputFormatter lengthLimitFormatter(int length) =>
      LengthLimitingTextInputFormatter(length);

  static TextInputFormatter capitalizeFormatter() =>
      TextInputFormatter.withFunction((_, newValue) {
        return newValue.copyWith(
          text: newValue.text.toUpperCase(),
        );
      });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  // Workaround need to show the error text only when the
  // text field has been changed.
  bool _hasChanged = false;

  // Use it to change color for border when textFiled in focus
  final _focusNode = FocusNode();

  // Color for border
  Color _borderColor = Colors.grey;
  double _borderWidth = 1;
  bool _isObscureText = false;

  @override
  void initState() {
    _isObscureText = widget.obscureText;
    super.initState();
    // Change color for border if focus was changed
    _focusNode.addListener(() {
      setState(() {
        _borderColor = _focusNode.hasFocus
            ? widget.hasError
                ? context.colors.textRed
                : context.colors.labelPrimary
            : widget.hasError
                ? context.colors.textRed
                : context.colors.textGrey;
        _borderWidth = _focusNode.hasFocus ? 3 : 1;
      });
    });
  }

  @override
  void didUpdateWidget(covariant AppTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
    _borderColor =
        widget.hasError ? context.colors.textRed : context.colors.labelPrimary;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: widget.controller,
          focusNode: _focusNode,
          showCursor: widget.showCursor && widget.enabled,
          readOnly: widget.readOnly,
          textAlign: widget.textAlign ?? TextAlign.start,
          onChanged: (value) {
            setState(() => _hasChanged = true);
            widget.onChanged?.call(value);
          },
          maxLines: widget.hasCircularBorder ? null : widget.maxLines,
          maxLength: widget.maxLength,
          onFieldSubmitted: widget.onSubmitted,
          textAlignVertical: TextAlignVertical.center,
          onTap: widget.onTap,
          validator: widget.validator,
          inputFormatters: <TextInputFormatter>[
            if (widget.useDefaultLengthLimiterFormatter)
              AppTextField.defaultLengthLimitFormatter,
            if (widget.capitalize) AppTextField.capitalizeFormatter(),
            ...?widget.formatters,
          ],
          autovalidateMode: widget.validator == null
              ? AutovalidateMode.disabled
              : AutovalidateMode.onUserInteraction,
          enabled: widget.enabled,
          keyboardType: widget.keyboardType,
          obscureText: _isObscureText,
          style: AppTextStyles.title.copyWith(
            fontSize: 14,
          ),
          cursorColor: context.colors.labelPrimary,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: _borderColor,
                width: _borderWidth,
              ),
              borderRadius:
                  BorderRadius.circular(widget.hasCircularBorder ? 32.0 : 4),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: _borderColor,
                width: _borderWidth,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: _borderColor,
                width: _borderWidth,
              ),
            ),
            prefixIcon: widget.prefixIcon,
            filled: true,
            suffix: widget.obscureText
                ? GestureDetector(
                    onTap: () {
                      setState(() => _isObscureText = !_isObscureText);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 2.0),
                      child: Assets.icons.eye.svg(
                        color: context.colors.text,
                      ),
                    ),
                  )
                : null,
            labelText:
                widget.focusNode?.hasFocus ?? true ? widget.labelText : '',
            labelStyle: AppTextStyles.title.copyWith(
              fontSize: 12,
              color: context.colors.textGrey,
            ),
            contentPadding: const EdgeInsetsDirectional.fromSTEB(16, 8, 16, 11),
            suffixIcon: widget.suffixIcon,
            fillColor: context.colors.inputBackground,
          ),
        ),
        if (widget.errorText != null && _hasChanged)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 6),
            child: AppText.body(
              widget.errorText!,
              color: context.colors.textRed,
              textAlign: TextAlign.center,
            ),
          ),
      ],
    );
  }
}

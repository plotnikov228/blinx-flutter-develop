import 'package:blinx/presentation/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({
    Key? key,
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
    this.formatters,
    this.textColor,
    this.capitalize = false,
    this.useDefaultLengthLimiterFormatter = false,
    this.padding = const EdgeInsets.all(0),
    this.hasError = false,
    this.prefixIcon,
    this.paddingEnd = 20,
  }) : super(key: key);

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
  final double paddingEnd;

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
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  TextEditingController baseController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(end: widget.paddingEnd),
      child: SizedBox(
        height: 50,
        child: TextFormField(
          controller:
              widget.suffix != null ? widget.controller : baseController,
          focusNode: widget.focusNode,
          showCursor: widget.showCursor && widget.enabled,
          readOnly: widget.readOnly,
          onChanged: (value) {
            widget.onChanged?.call(value);
          },
          maxLines: widget.maxLines,
          maxLength: widget.maxLength,
          onFieldSubmitted: widget.onSubmitted,
          textAlignVertical: TextAlignVertical.center,
          onTap: () {
            final controller =
                widget.suffix != null ? widget.controller! : baseController;
            final textLength = controller.text.length;
            final selectionCondition = controller.selection ==
                TextSelection.fromPosition(
                    TextPosition(offset: textLength - 1));
            final selectedResult =
                TextSelection.fromPosition(TextPosition(offset: textLength));

            if (widget.suffix != null &&
                widget.controller != null &&
                selectionCondition == true) {
              widget.controller!.selection = selectedResult;
            } else if (selectionCondition == true) {
              baseController.selection = selectedResult;
            }
          },
          validator: widget.validator,
          inputFormatters: <TextInputFormatter>[
            if (widget.useDefaultLengthLimiterFormatter)
              SearchTextField.defaultLengthLimitFormatter,
            if (widget.capitalize) SearchTextField.capitalizeFormatter(),
            ...?widget.formatters,
          ],
          autovalidateMode: widget.validator == null
              ? AutovalidateMode.disabled
              : AutovalidateMode.onUserInteraction,
          enabled: widget.enabled,
          keyboardType: widget.keyboardType,
          textInputAction: TextInputAction.search,
          obscureText: widget.obscureText,
          style: AppTextStyles.title.copyWith(
            fontSize: 15,
            color: (widget.textColor ?? context.colors.labelPrimary)
                .withOpacity(widget.enabled ? 1 : .5),
          ),
          cursorColor: context.colors.labelPrimary,
          decoration: InputDecoration(
            prefixIcon: widget.prefixIcon,
            filled: true,
            suffix: widget.suffix,
            hintText: widget.labelText,
            suffixIcon: widget.suffixIcon,
            // Todo: modify error widget here
            fillColor: context.colors.background,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(3),
              borderSide: BorderSide(
                width: 1,
                color: context.colors.inputBorderGrey,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(3),
              borderSide: BorderSide(
                width: 1,
                color: context.colors.inputBorderGrey,
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(3),
              borderSide: BorderSide(
                width: 1,
                color: context.colors.inputBorderGrey,
              ),
            ),
            hintStyle: AppTextStyles.title.copyWith(
              fontSize: 15,
              color: context.colors.labelPrimary,
            ),
            floatingLabelBehavior: FloatingLabelBehavior.never,
          ),
        ),
      ),
    );
  }
}
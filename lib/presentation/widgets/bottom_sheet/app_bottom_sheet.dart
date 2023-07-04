import 'dart:ui';

import 'package:blinx/presentation/resources/resources.dart';
import 'package:flutter/material.dart';

import 'ui/app_bottom_sheet_title_header.dart';

class AppBottomSheet {
  const AppBottomSheet._();

  // Shows a modal bottom sheet which has default background blur.
  ///
  /// The `context` argument is used to look up the [Navigator] and [Theme] for
  /// the bottom sheet. It is only used when the method is called.
  ///
  /// The `child` parameter requires a widget
  ///
  /// The `blur` defines the both sigmaX and sigmaY value, default 48.0
  ///
  /// The `backgroundOpacity` is for background transparancy,
  /// must be between 0 to 1, default 0.48
  ///
  /// If `showCloseIcon` is `true`, a close icon will be shown at top-end corner
  /// otherwise not, default `false`
  ///
  /// The `sheetTitile` is `to show title on top-start corner, optional param
  ///

  static Future<T?> showSheet<T>(
    BuildContext context, {
    required Widget child,
    double blur = 48.0,
    double backgroundOpacity = 0.48,
    bool showCloseIcon = false,
    String? sheetTitle,
  }) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) => Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: blur,
                  sigmaY: blur,
                ),
                child: Container(
                  width: double.infinity,
                  color: context.colors.background, 
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Column(
                        children: [
                          AppBottomSheetTitleHeader(
                            sheetTitle: sheetTitle,
                            showCloseIcon: showCloseIcon,
                          ),
                          child,
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

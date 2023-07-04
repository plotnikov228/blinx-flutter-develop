import 'package:blinx/presentation/widgets/snackbar/ui/error_bar.dart';
import 'package:blinx/presentation/widgets/snackbar/ui/notice_bar.dart';
import 'package:blinx/presentation/widgets/snackbar/ui/success_bar.dart';
import 'package:blinx/presentation/widgets/snackbar/ui/warning_bar.dart';
import 'package:flutter/material.dart';

typedef SnackBarScaffoldFeatureController
    = ScaffoldFeatureController<SnackBar, SnackBarClosedReason>;

/// whether it's a custom spesific [SnackBar] or a shared [SnackBar] for
/// connection or generic errors.
///
class AppSnackBar {
  static const Duration _defaultDuration = Duration(milliseconds: 4000);

  const AppSnackBar._();

  static SnackBarScaffoldFeatureController showSuccessMessage(
    BuildContext context, {
    Duration? duration,
    bool removeCurrentSnackBar = true,
    required String title,
  }) {
    final scaffoldMessenger = ScaffoldMessenger.of(context);

    if (removeCurrentSnackBar) {
      scaffoldMessenger.removeCurrentSnackBar();
    }

    final snackbar = SnackBar(
      content: AppSuccessBar(title: title),
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(16.0),
      duration: duration ?? _defaultDuration,
      elevation: .0,
    );

    return scaffoldMessenger.showSnackBar(snackbar);
  }

  static SnackBarScaffoldFeatureController showErrorMessage(
    BuildContext context, {
    Duration? duration,
    bool removeCurrentSnackBar = true,
    required String title,
  }) {
    final scaffoldMessenger = ScaffoldMessenger.of(context);

    if (removeCurrentSnackBar) {
      scaffoldMessenger.removeCurrentSnackBar();
    }

    final snackbar = SnackBar(
      content: AppErrorBar(title: title),
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(16.0),
      duration: duration ?? _defaultDuration,
      elevation: .0,
    );

    return scaffoldMessenger.showSnackBar(snackbar);
  }

  static SnackBarScaffoldFeatureController showNoticeMessage(
    BuildContext context, {
    Duration? duration,
    bool removeCurrentSnackBar = true,
    required String title,
  }) {
    final scaffoldMessenger = ScaffoldMessenger.of(context);

    if (removeCurrentSnackBar) {
      scaffoldMessenger.removeCurrentSnackBar();
    }

    final snackbar = SnackBar(
      content: AppNoticeBar(title: title),
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(16.0),
      duration: duration ?? _defaultDuration,
      elevation: .0,
    );

    return scaffoldMessenger.showSnackBar(snackbar);
  }

  static SnackBarScaffoldFeatureController showWarningMessage(
    BuildContext context, {
    Duration? duration,
    bool removeCurrentSnackBar = true,
    required String title,
  }) {
    final scaffoldMessenger = ScaffoldMessenger.of(context);

    if (removeCurrentSnackBar) {
      scaffoldMessenger.removeCurrentSnackBar();
    }

    final snackbar = SnackBar(
      content: AppWarningBar(title: title),
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(16.0),
      duration: duration ?? _defaultDuration,
      elevation: .0,
    );

    return scaffoldMessenger.showSnackBar(snackbar);
  }
}

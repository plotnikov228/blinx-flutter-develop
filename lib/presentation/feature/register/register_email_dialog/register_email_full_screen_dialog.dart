import 'package:auto_route/auto_route.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/presentation/feature/register/register_email_dialog/cubit/register_email_cubit.dart';
import 'package:blinx/presentation/feature/register/ui/login_navigation_bar.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_blinx_logo_large.dart';
import 'package:blinx/presentation/widgets/app_single_child_scroll_view.dart';
import 'package:blinx/presentation/widgets/utilities/focus_scope_dismissible.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ui/email_registration_email_text_field.dart';
import 'ui/email_registration_headline_text.dart';
import 'ui/email_registration_next_button.dart';

class RegisterEmailFullScreenDialog extends StatelessWidget {
  const RegisterEmailFullScreenDialog._({Key? key}) : super(key: key);

  static Future<void> show(BuildContext context) async {
    await context.popRoute();
    return showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: context.colors.background,
      builder: (context) => Dialog(
        insetPadding: EdgeInsets.zero,
        backgroundColor: context.colors.background,
        child: const RegisterEmailFullScreenDialog._(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FocusScopeDismissible(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
              onPressed: context.popRoute,
              icon: Assets.icons.close.svg(
                color: context.colors.text,
              ),
            )
          ],
        ),
        body: AppSingleChildScrollView(
          padding: 24.0,
          child: BlocProvider<RegisterEmailCubit>(
            create: (context) => injector(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                SizedBox(height: 32),
                AppBlinxLogoLarge(),
                EmailRegistrationHeadlineText(),
                EmailRegistrationEmailTextField(),
                SizedBox(height: 32),
                EmailRegistrationNextButton(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const LoginNavigationBar(),
      ),
    );
  }
}

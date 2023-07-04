import 'package:blinx/injection/injector.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_single_child_scroll_view.dart';
import 'package:blinx/presentation/widgets/utilities/focus_scope_dismissible.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/reset_password_cubit.dart';
import 'ui/reset_password_send_link_button.dart';
import 'ui/reset_password_email_field.dart';
import 'ui/reset_password_description.dart';
import 'ui/reset_password_title.dart';

///
import 'package:blinx/gen/assets.gen.dart';
///
class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({
    Key? key,
  }) : super(key: key);

  static const int resendTimeIntervalInSec = 60;

  @override
  Widget build(BuildContext context) {
    return FocusScopeDismissible(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: context.colors.background,
          automaticallyImplyLeading: false,
          elevation: 0,
          leading:Container(
            margin: const EdgeInsets.only(right: 27.0),
            child:IconButton(onPressed: () {
             Navigator.pop(context);
            }, 
            icon:  Assets.icons.leadingRight.svg(color: context.colors.text)),
          ) ,
          // iconTheme: IconThemeData(
          //   color: context.colors.labelPrimary,
          // ),
        ),
        body: AppSingleChildScrollView(
          padding: 24.0,
          child: BlocProvider<ResetPasswordCubit>(
            create: (context) => injector(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                ResetPasswordTitle(),
                ResetPasswordDescription(),
                ResetPasswordEmailField(),
                SizedBox(height: 44),
                ResetPasswordSendLinkButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

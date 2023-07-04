import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/presentation/feature/register/cubit/finish_registration_cubit.dart';
import 'package:blinx/presentation/feature/register/register_email_dialog/ui/email_registration_headline_text.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_single_child_scroll_view.dart';
import 'package:blinx/presentation/widgets/utilities/focus_scope_dismissible.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ui/finish_registration_agreement.dart';
import 'ui/finish_registration_button.dart';
import 'ui/finish_registration_create_password_field.dart';
import 'ui/finish_registration_email_field.dart';
import 'ui/finish_registration_password_rules.dart';
import 'ui/finish_registration_username_field.dart';


///

import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/widgets/app_button.dart';
import 'package:blinx/presentation/widgets/app_text.dart';

class RegisterBody extends StatelessWidget{
  Function? changeState;

  RegisterBody({
    Key? key,
    this.changeState,  
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  final i18n = context.localization.login;
    return FocusScopeDismissible(
      child: Scaffold(
        appBar:  AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: context.colors.background,
          elevation: 0,
          // Closing X
          actions: [
            Container(
              margin: const EdgeInsets.only(left: 20.0),
              child: IconButton(onPressed: (){Navigator.pop(context);},
               icon:  Assets.icons.close.svg(color: context.colors.text)),
            ),
          ],
          // Back arrow
          leading:Container(
            margin: const EdgeInsets.only(right: 27.0),
            child:IconButton(onPressed: () {
              if (changeState != null) {
                changeState!();
              }
            }, 
            icon:  Assets.icons.leadingRight.svg(color: context.colors.text)),
          ) ,
        ),
        body: AppSingleChildScrollView(
          padding: 24.0,
          child: BlocProvider<FinishRegistrationCubit>(
            create: (context) => injector(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                EmailRegistrationHeadlineText(),
                FinishRegistrationEmailField(),
                SizedBox(height: 16),
                FinishRegistrationUsernameField(),
                SizedBox(height: 16),
                FinishRegistrationCreatePasswordField(),
                FinishRegistrationPasswordRules(),
                FinishRegistrationButton(),
                SizedBox(height: 8),
                FinishRegistrationAgreement(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: 128,
          child: Column(
            children: [
              const Divider(color: Colors.grey),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: AppText.titleLight(i18n.doHaveAccount),
              ),
              AppButton.text(
                title: i18n.loginAction,
                textColor: context.colors.text,
                onPressed: () {
                  if (changeState != null) {
                    changeState!();
                  }
                },
              )
            ],
          ),
        ),
      ),
    );

  }
}

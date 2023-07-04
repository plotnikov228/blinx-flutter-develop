import 'package:auto_route/auto_route.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/feature/login/cubit/login_cubit.dart';
import 'package:blinx/presentation/feature/login/ui/login_button.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:blinx/presentation/widgets/app_button.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:blinx/presentation/widgets/app_text_field.dart';
import 'package:blinx/presentation/widgets/utilities/focus_scope_dismissible.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBody extends StatelessWidget {
  LoginBody({
    Key? key,
    this.changeState,  
  }) : super(key: key);
  Function? changeState;

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.login;
    return FocusScopeDismissible(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: context.colors.background,
          elevation: 0,
          actions: [
            Container(
              margin: const EdgeInsets.only(left: 20.0),
              child: IconButton(onPressed: (){Navigator.pop(context);},
              icon:  Assets.icons.close.svg(color: context.colors.text)),
            ),
          ],
        ),
       
        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(24, 52, 24, 0),
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Assets.icons.loginIcon.svg(),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 32, 0, 32),
                child: AppText.headlineLarge32(
                  i18n.headline,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 32),
                child: AppText.titleLight(
                  i18n.title,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 16,
                ),
                child: BlocBuilder<LoginCubit, LoginState>(
                  builder: (context, state) {
                    return AppTextField(
                      labelText: i18n.emailHint,
                      enabled: !state.isLoggingIn,
                      onChanged: context.read<LoginCubit>().setEmail,
                    );
                  },
                ),
              ),
              BlocBuilder<LoginCubit, LoginState>(
                builder: (context, state) {
                  return AppTextField(
                    labelText: i18n.passwordHint,
                    enabled: !state.isLoggingIn,
                    suffix: Assets.icons.eye.svg(),
                    obscureText: true,
                    onChanged: context.read<LoginCubit>().setPassword,
                  );
                },
              ),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => context.navigateTo(
                    const ResetPasswordScreenRoute(),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 8, 0, 32),
                    child: AppText.button(
                      i18n.forgotPasswordAction,
                    ),
                  ),
                ),
              ),
              const LoginButton(),
            ],
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: 140,
          child: Column(
            children: [
              Divider(color: context.colors.grey),
              Padding(
                padding: const EdgeInsets.only(
                  top: 32,
                ),
                child: AppText.titleLight(i18n.dontHaveAccountLabel),
              ),
              AppButton.text(
                title: i18n.registerAction,
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

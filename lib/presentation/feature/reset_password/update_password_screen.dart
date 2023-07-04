import 'package:amazon_cognito_identity_dart_2/cognito.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/feature/register/cubit/finish_registration_cubit.dart';
import 'package:blinx/presentation/feature/register/ui/finish_registration_password_rules.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:blinx/presentation/utils/my_cognito_user_pool.dart';
import 'package:blinx/presentation/utils/password_validator.dart';
import 'package:blinx/presentation/widgets/app_bar/blinx_app_bar.dart';
import 'package:blinx/presentation/widgets/app_button.dart';
import 'package:blinx/presentation/widgets/app_single_child_scroll_view.dart';
import 'package:blinx/presentation/widgets/app_text_field.dart';
import 'package:blinx/presentation/widgets/snackbar/app_snackbar.dart';
import 'package:blinx/presentation/widgets/utilities/focus_scope_dismissible.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import '../../../domain/preferences/app_preferences.dart';
class UpdatePasswordScreen extends StatefulWidget {
  const UpdatePasswordScreen({
    Key? key,
    required this.email,
  }) : super(key: key);
  final String email;

  @override
  State<StatefulWidget> createState() => _UpdatePasswordScreen();
}

class _UpdatePasswordScreen extends State<UpdatePasswordScreen> {
  var otpController = '';
  var passwordController = TextEditingController();
  bool isLoading = false;

  void confirm() async {
    var i13 = context.localization.error;
    final userPool = MyCognitoUserPool.getCognitoUserPool();
    final cognitoUser = CognitoUser(widget.email, userPool);

    setState(() {
      isLoading = true;
    });

    await cognitoUser
        .confirmPassword(otpController, passwordController.text)
        .then((value) {
      context.navigateTo(const LoginScreenRoute());
    }).onError((error, stackTrace) {
      AppSnackBar.showErrorMessage(
        context,
        title: i13.invalidVerificationCodeProvided,
      );
    });

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    var i12 = context.localization.login;
    final i18n = context.localization.defaultSection;
    final appSharedPreferences = injector.get<AppPreferences>();
    var locale = appSharedPreferences.getLanguage;
    var isEnglish = locale == 'en';
    return FocusScopeDismissible(
      child: Scaffold(
        appBar: BlinxAppBar.normal(
          backgroundColor: context.colors.background,
        ),
        body: AppSingleChildScrollView(
          padding: 24.0,
          child: BlocProvider<FinishRegistrationCubit>(
            create: (context) => injector(),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    i18n.resetThePassword,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w800,
                      color: context.colors.text,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    i12.weHaveSentCodeToEmail,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: context.colors.text,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    widget.email,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: context.colors.text,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Directionality(
                    textDirection: isEnglish ? TextDirection.ltr : TextDirection.rtl,
                    child: Container(
                      color: context.colors.background,
                      child: OTPTextField(
                        length: 6,
                        width: MediaQuery.of(context).size.width,
                        fieldWidth: 44,
                        style: const TextStyle(
                          fontSize: 17,
                        ),
                        textFieldAlignment: MainAxisAlignment.spaceAround,
                        fieldStyle: FieldStyle.box,
                        otpFieldStyle: OtpFieldStyle(
                            backgroundColor: context.colors.background,
                            borderColor: context.colors.backgroundReversed,
                            disabledBorderColor: context.colors.backgroundReversed,
                            enabledBorderColor: context.colors.backgroundReversed,
                            focusBorderColor: context.colors.backgroundReversed,),
                        onChanged: (e) {
                          setState(() {
                            otpController = e;
                          });
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  AppTextField(
                    labelText: i12.passwordHint,
                    enabled: !isLoading,
                    suffix: Assets.icons.eye.svg(),
                    obscureText: true,
                    controller: passwordController,
                    onChanged: (e) => setState(() {}),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const FinishRegistrationPasswordRules(),
                  const SizedBox(
                    height: 50,
                  ),
                  AppButton.rounded(
                    title: i18n.reset,
                    isLoading: isLoading,
                    onPressed: otpController.length == 6 &&
                            PasswordValidator.hasMinimumLength(
                                passwordController.text)
                        ? confirm
                        : null,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
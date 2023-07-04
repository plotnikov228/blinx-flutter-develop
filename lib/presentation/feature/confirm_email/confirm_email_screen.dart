import 'dart:async';

import 'package:amazon_cognito_identity_dart_2/cognito.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blinx/domain/entities/email.dart';
import 'package:blinx/domain/entities/user.dart';
import 'package:blinx/domain/entities/username.dart';
import 'package:blinx/domain/preferences/app_preferences.dart';
import 'package:blinx/domain/preferences/auth_preferences.dart';
import 'package:blinx/domain/preferences/user_preferences.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/common/cubit/theme/app_theme_cubit.dart';
import 'package:blinx/presentation/feature/register/cubit/finish_registration_cubit.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:blinx/presentation/utils/my_cognito_user_pool.dart';
import 'package:blinx/presentation/widgets/app_bar/blinx_app_bar.dart';
import 'package:blinx/presentation/widgets/app_button.dart';
import 'package:blinx/presentation/widgets/app_single_child_scroll_view.dart';
import 'package:blinx/presentation/widgets/snackbar/app_snackbar.dart';
import 'package:blinx/presentation/widgets/utilities/focus_scope_dismissible.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class ConfirmEmailScreen extends StatefulWidget {
  const ConfirmEmailScreen({
    Key? key,
    required this.email,
    required this.name,
    required this.username,
    required this.password,
    this.forceResend = false,
  }) : super(key: key);
  final String email;
  final String name;
  final String username;
  final String password;
  final bool forceResend;

  @override
  State<StatefulWidget> createState() => _ConfirmEmailScreen();
}

class _ConfirmEmailScreen extends State<ConfirmEmailScreen> {
  Timer? _timer;
  var otpConfirmationTimeout = const Duration(seconds: 30);
  var otpController = '';
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    startTimer();

    if (widget.forceResend) sendAgain();
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  void startTimer() {
    otpConfirmationTimeout = const Duration(seconds: 30);
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        final seconds = otpConfirmationTimeout.inSeconds - 1;
        if (seconds < 0) {
          _timer!.cancel();
        } else {
          otpConfirmationTimeout = Duration(seconds: seconds);
        }
        setState(() {});
      });
    });
  }

  void confirm() async {
    final userPool = MyCognitoUserPool.getCognitoUserPool();
    final cognitoUser = CognitoUser(widget.email, userPool);

    setState(() {
      isLoading = true;
    });
    await cognitoUser.confirmRegistration(otpController).then((value) async {
      final authDetails = AuthenticationDetails(
        username: widget.email,
        password: widget.password,
      );

      cognitoUser.setAuthenticationFlowType('USER_PASSWORD_AUTH');

      await cognitoUser.authenticateUser(authDetails).then((value) async {
        var userPreferences = injector.get<UserPreferences>();

        await userPreferences.setUser(User(
          id: 0,
          email: Email(widget.email),
          name: Username(widget.name),
          username: Username(widget.username),
          avatar: null,
        ));

        await injector
            .get<AuthPreferences>()
            .setAccessToken(value!.accessToken.jwtToken!);

        await cognitoUser.cacheTokens();

        await context.router.replace(const OnboardingScreenRoute());
      }).onError((error, stackTrace) {
        var _i13 = context.localization.error;
        if (error is CognitoClientException) {
          if (error.code == 'NotAuthorizedException') {
            AppSnackBar.showErrorMessage(
              context,
              title: _i13.incorrectUsernameOrPassword,
            );
          } else {
            AppSnackBar.showErrorMessage(
              context,
              title: _i13.userDoesNotExist,
            );
          }
        }
      });
    }).onError((error, stackTrace) {
      AppSnackBar.showErrorMessage(
        context,
        title: 'Invalid verification code provided',
      );
    });

    setState(() {
      isLoading = false;
    });
  }

  void sendAgain() {
    final userPool = MyCognitoUserPool.getCognitoUserPool();
    final cognitoUser = CognitoUser(widget.email, userPool);

    try {
      cognitoUser.resendConfirmationCode();
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    final appSharedPreferences = injector.get<AppPreferences>();
    var locale = appSharedPreferences.getLanguage;
    var isEnglish = locale == 'en';
    var i12 = context.localization.login;
    final themeMode = context.watch<AppThemeCubit>().state.themeMode;
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
                    i12.verifyEmail,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w800,
                      color: (themeMode == ThemeMode.dark)?Colors.white:Colors.black,
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
                      color: (themeMode == ThemeMode.dark)?Colors.white:Colors.black,
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
                      color: (themeMode == ThemeMode.dark)?Colors.white:Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  Directionality(
                    textDirection: isEnglish ? TextDirection.ltr : TextDirection.rtl,
                    child: Container(
                      color: (themeMode == ThemeMode.dark)?Colors.black:Colors.white,
                      child: OTPTextField(
                        length: 6,
                        width: MediaQuery.of(context).size.width,
                        fieldWidth: 44,
                        style: const TextStyle(
                          fontSize: 17,
                        ),
                        textFieldAlignment: MainAxisAlignment.spaceAround,
                        fieldStyle: FieldStyle.box,
                        otpFieldStyle: (themeMode == ThemeMode.dark)?OtpFieldStyle(
                            backgroundColor: const Color(0xFF272727),
                            borderColor: const Color(0xFF272727),
                            disabledBorderColor: const Color(0xFF272727),
                            enabledBorderColor: const Color(0xFF272727),
                            focusBorderColor: Colors.white):OtpFieldStyle(
                            backgroundColor: Colors.grey.withOpacity(0.5),
                            borderColor: Colors.grey.withOpacity(0.5),
                            disabledBorderColor: Colors.grey.withOpacity(0.5),
                            enabledBorderColor: Colors.grey.withOpacity(0.5),
                            focusBorderColor: Colors.black),
                        onChanged: (e) {
                          setState(() {
                            otpController = e;
                          });
                        },
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    '(${otpConfirmationTimeout.toString().substring(2, 7)})',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                      color: (themeMode == ThemeMode.dark)?Colors.white:Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 57,
                  ),
                  AppButton.rounded(
                    title: i12.verify,
                    isLoading: isLoading,
                    onPressed: otpController.length == 6 ? confirm : null,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  AppButton.rounded(
                    title: i12.sendAgain,
                    isLoading: false,
                    onPressed: otpConfirmationTimeout.inSeconds == 0
                        ? () {
                            startTimer();
                            sendAgain();
                          }
                        : null,
                  ),
                ],
              ),
            ),
          ),
        ),
        //bottomNavigationBar: const LoginNavigationBar(),
      ),
    );
  }
}

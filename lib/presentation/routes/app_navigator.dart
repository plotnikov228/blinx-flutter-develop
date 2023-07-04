import 'package:auto_route/auto_route.dart';
import 'package:blinx/domain/preferences/auth_preferences.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:flutter/widgets.dart';

extension AppNavigator on BuildContext {
  Future<void> navigateToHomeScreen() {
    return navigateTo(const HomeScreenRoute());
  }

  Future<void> replaceWithHomeScreen() => replaceRoute(
        const HomeScreenRoute(),
      );

  Future<void> navigateToLoginScreen() => navigateTo(
        const LoginScreenRoute(),
      );

  Future<void> navigateToSignupScreen() {
    /*return navigateTo(
        //const RegisterScreenRoute(),

    );*/
    return Future(() => null);
  }

  Future<void> navigateToSupport() => navigateTo(
        const SupportScreenRoute(),
      );

  Future<void> navigateToProfile() {
    final authPreferences = injector.get<AuthPreferences>();

    if (authPreferences.hasValidAccessToken) {
      return navigateTo(const ProfilePageRoute());
    }
    return navigateTo(const UnauthorizedProfileScreenRoute());
  }
}

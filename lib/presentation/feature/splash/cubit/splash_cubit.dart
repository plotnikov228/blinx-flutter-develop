import 'package:blinx/domain/preferences/app_preferences.dart';
import 'package:blinx/domain/preferences/auth_preferences.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

enum SplashNavigationFlow {
  homeScreen,
  loginScreen,
}

@injectable
class SplashCubit extends Cubit<SplashNavigationFlow?> {
  SplashCubit(
    this.appPreferences,
    this.authPreferences,
  ) : super(null);

  final AppPreferences appPreferences;
  final AuthPreferences authPreferences;

  void getNavigationFlowState() async {
    final isLoggedIn = authPreferences.isLoggedIn();
    final isFirstAppOpen = appPreferences.isFirstAppOpen;

    // Increment app-open counter
    await appPreferences.setAppOpenCount(appPreferences.getAppOpenCount + 1);

    if (isLoggedIn || (!isLoggedIn && isFirstAppOpen)) {
      emit(SplashNavigationFlow.homeScreen);

      // Increment app-open counter so once the counter is greater than 1,
      // we navigate to the login screen.
      await appPreferences.setAppOpenCount(appPreferences.getAppOpenCount + 1);
    } else {
      emit(SplashNavigationFlow.loginScreen);
    }
  }
}

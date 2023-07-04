import 'package:blinx/domain/preferences/auth_preferences.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'authorization_cubit.freezed.dart';

part 'authorization_state.dart';

@singleton
class AuthorizationCubit extends Cubit<AuthorizationState> {
  AuthorizationCubit(this._authPreferences) : super(AuthorizationState()) {
    _loadAuthState();
  }

  final AuthPreferences _authPreferences;

  void _loadAuthState() {
    _authPreferences.subscribeToLoginState().listen((isAuthenticated) {
      emit(state.copyWith(isAuthenticated: isAuthenticated));
    });
  }
}

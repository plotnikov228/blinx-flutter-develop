import 'package:blinx/data/services/request_objects/auth/login_request_body.dart';
import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/domain/entities/email.dart';
import 'package:blinx/domain/entities/password.dart';
import 'package:blinx/domain/services/auth_service.dart';
import 'package:blinx/domain/usecases/use_case.dart';
import 'package:injectable/injectable.dart';
import 'package:tuple/tuple.dart';

typedef LoginInput = Tuple2<Email, Password>;

@injectable
class LoginWithEmailAndPasswordUseCase
    extends UseCase<LoginInput, Future<void>> {
  LoginWithEmailAndPasswordUseCase(this._authService);

  final AuthService _authService;
  @override
  Future<void> call(LoginInput input) async {
    if (!input.item1.isValid && !input.item2.hasMinimumLength) {
      throw const ResponseError.invalidLoginCredentials();
    }

    final _email = input.item1.value;
    final _password = input.item2.value;

    final loginRequestBody = LoginRequestBody(
      email: _email,
      password: _password,
    );

    await _authService.login(loginRequestBody);
  }
}

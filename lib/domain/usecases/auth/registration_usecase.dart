import 'package:blinx/data/services/request_objects/auth/registration_request_body.dart';
import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/domain/entities/email.dart';
import 'package:blinx/domain/entities/password.dart';
import 'package:blinx/domain/entities/username.dart';
import 'package:blinx/domain/services/auth_service.dart';
import 'package:blinx/domain/usecases/use_case.dart';
import 'package:injectable/injectable.dart';
import 'package:tuple/tuple.dart';

typedef RegistrationInput = Tuple3<Username, Email, Password>;

@injectable
class RegistrationUseCase extends UseCase<RegistrationInput, Future<void>> {
  RegistrationUseCase(this._authService);

  final AuthService _authService;

  @override
  Future<void> call(RegistrationInput input) async {
    if (!input.item1.isValid && !input.item2.isValid && !input.item3.isValid) {
      throw const ResponseError.invalidRegistrationCredentials();
    }

    final username = input.item1.value;
    final email = input.item2.value;
    final password = input.item3.value;

    final registrationRequestBody = RegistrationRequestBody(
      username: username,
      email: email,
      password: password,
    );

    await _authService.register(registrationRequestBody);
  }
}

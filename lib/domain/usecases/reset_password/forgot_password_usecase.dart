import 'package:blinx/data/services/request_objects/auth/email_request_body.dart';
import 'package:blinx/domain/services/auth_service.dart';
import 'package:blinx/domain/usecases/use_case.dart';
import 'package:injectable/injectable.dart';

@injectable
class ForgetPasswordUseCase extends UseCase<String, Future<void>> {
  ForgetPasswordUseCase(this._authService);
  final AuthService _authService;

  @override
  Future<void> call(String input) =>
      _authService.forgotPassword(EmailRequestBody(email: input));
}

import 'package:blinx/domain/services/auth_service.dart';
import 'package:blinx/domain/usecases/use_case.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteAccountUseCase extends OutputUseCase<Future<void>> {
  DeleteAccountUseCase(this._authService);
  final AuthService _authService;

  @override
  Future<void> call() => _authService.deleteAccount();
}

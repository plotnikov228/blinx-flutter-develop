import 'package:blinx/domain/entities/user.dart';
import 'package:blinx/domain/services/auth_service.dart';
import 'package:blinx/domain/usecases/use_case.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetStreamingUserUseCase extends OutputUseCase<Stream<User>> {
  GetStreamingUserUseCase(this._authService);

  final AuthService _authService;

  @override
  Stream<User> call() => _authService.getStreamingUser();
}

import 'package:blinx/data/services/request_objects/auth/update_user_request_body.dart';
import 'package:blinx/domain/entities/password.dart';
import 'package:blinx/domain/services/auth_service.dart';
import 'package:blinx/domain/usecases/use_case.dart';
import 'package:injectable/injectable.dart';
import 'package:tuple/tuple.dart';

typedef ChangePasswordInput = Tuple2<Password, Password>;

@injectable
class ChangePasswordUseCase extends UseCase<ChangePasswordInput, Future<void>> {
  ChangePasswordUseCase(this._authService);
  final AuthService _authService;

  @override
  Future<void> call(ChangePasswordInput input) async {
    final currentPassword = input.item1.value;
    final newPassword = input.item2.value;

    final updateUserRequestBody = UpdateUserRequestBody(
      currentPassword: currentPassword,
      newPassword: newPassword,
    );
    await _authService.updateUser(updateUserRequestBody);
  }
}

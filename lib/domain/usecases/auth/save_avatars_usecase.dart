import 'package:blinx/data/services/request_objects/avatar/avatar_request_body.dart';
import 'package:blinx/domain/services/auth_service.dart';
import 'package:blinx/domain/usecases/use_case.dart';
import 'package:injectable/injectable.dart';

@injectable
class SaveAvatarsUseCase extends UseCase<String, Future<void>> {
  SaveAvatarsUseCase(this._authService);
  final AuthService _authService;

  @override
  Future<void> call(String input) async {
    await _authService.saveAvatars(AvatarRequestBody(avatar: input));
  }
}

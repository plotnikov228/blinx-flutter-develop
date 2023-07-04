import 'package:blinx/data/services/request_objects/auth/update_user_request_body.dart';
import 'package:blinx/domain/services/auth_service.dart';
import 'package:blinx/domain/usecases/use_case.dart';
import 'package:injectable/injectable.dart';
import 'package:tuple/tuple.dart';

typedef PersonalDetailsInput = Tuple2<String, String>;

@injectable
class SavePersonalDetailsUseCase
    extends UseCase<PersonalDetailsInput, Future<void>> {
  SavePersonalDetailsUseCase(this._authService);
  final AuthService _authService;

  @override
  Future<void> call(PersonalDetailsInput input) async {
    final name = input.item1;
    final username = input.item2;

    final updateUserRequestBody = UpdateUserRequestBody(
      name: name,
      username: username,
    );
    await _authService.updateUser(updateUserRequestBody);
  }
}
